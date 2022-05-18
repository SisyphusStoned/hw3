class ListController < ApplicationController
    def index
        @places = Place.all
      end
    def show
        @place = Place.find_by({ "name" => params["name"] })
    end
end
