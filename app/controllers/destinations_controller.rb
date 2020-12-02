class DestinationsController < ApplicationController

    def index
        @destinations = Destination.all
    end

    def new
        @destination = Destination.new
    end

    def show
        @destination = Destination.find(params[:id])
    end

end