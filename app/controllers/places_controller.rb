class PlacesController < ApplicationController
    def index
        @places = Place.all
      end
    def show
        @place = Place.find_by({ "id" => params["id"] })
        @posts = Post.where({"place_id" => params["id"]})
    end
    def create
        @place = Place.new(params["place"])
        @place.save
        redirect_to "/places"
      end
    def new
        @place = Place.new
    end
end
