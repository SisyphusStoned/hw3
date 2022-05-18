class CityController < ApplicationController
    def new
        @post = Post.new
        @post.place_id = params["place_id"]
      end
end
