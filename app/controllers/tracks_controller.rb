class TracksController < ApplicationController
    @tracks = Track.all
    render :index
end

def show
    @track = Track.find(params[:id])
    render :show
end

def new
    @Track = Track.new()
    render :new
end

def create
end

def destroy
end
end
