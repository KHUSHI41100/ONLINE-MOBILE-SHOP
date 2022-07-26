class MainController < ApplicationController
    def index
        if session[:usser_id]
            @usser = Usser.find_by(id: session[:usser_id])
            render json: @usser
            
        end
    end
end
