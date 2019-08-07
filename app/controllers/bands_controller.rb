class BandsController < ApplicationController

    def index
        @bands = Band.all
        render :index
    end

    def show
        @band = Band.find(params[:id])
        render :show
    end

    def new
        @band = Band.new
        render :new
    end
     
    def create
        @band = Band.new(band_params)
        if @band.save
            redirect_to bands_url
        else
            render json: @user.errors.full_messages
        end
    end

    def update
    end

    def delete
    end


    private

    def band_params
        params.require(:band).permit(:name,:yr_started)
    end

end
