class AlbumsController < ApplicationController
    def index
        @albums = Album.all
        render :index
    end

    def show
        @album = Album.find(params[:id])
        render :show
    end

    def new
        @album = Album.new()
        render :new
    end

    def create
    end
    
    def destroy
    end
end
