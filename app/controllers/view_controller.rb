class ViewController < ApplicationController
    def new
        @post = Post.new
        @post.place_id = params["place_id"]
        @place = Place.find_by({ "id" => params["place_id"] })
    end
    def create
        @post = Post.new(params["post"])
        @post.save
        redirect_to "/places/#{@post.place_id}"
      end
end
