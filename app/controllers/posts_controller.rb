class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def show
        @post = Post.find(params[:id])
    end

    def create
        post = Post.create(post_params)
        if post.valid?
            redirect_to posts_path(post)
        else
            flash[:errors] = post.errors.full_messages
            redirect_to new_post_path
        end
    end

    def edit
        @post = Post.edit(params[:id])
    end

    def update
        @post = Post.update(post_params)
        if post.valid?
            redirect_to posts_path(post)
        else
            flash[:errors] = post.errors.full_messages
            redirect_to new_post_path
        end        
    end

    private

    def post_params
        params.require(:post).permit(:title, :content, :blogger_id, :destination_id)
    end


end