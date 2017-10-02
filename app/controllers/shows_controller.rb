class ShowsController < ApplicationController

    def show_param
        params.require(:show).permit([
                :title, 
                :series,
                :description, 
                :image, 
                :programmeID])
    end

    def index
        shows = Show.all
        render :json => shows
    end



    def create 
        show = Show.create(show_param)
        render :json => show
    end
end