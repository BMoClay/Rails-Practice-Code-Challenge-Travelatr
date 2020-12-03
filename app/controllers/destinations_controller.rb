class DestinationsController < ApplicationController

    def index
        @destinations = Destination.all
    end

    def new
        @destination = Destination.new
    end

    def show
        @destination = Destination.find(params[:id])
        @most_recent_5_posts = @destination.most_recent_N_posts(5)
        @most_featured_post = @destination.most_liked_N_posts(1)
        @average_age = @destination.average_age_of_all_bloggers_posted_on
    end

end