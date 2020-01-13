class PlaysController < ApplicationController
    def index
        if params[:formation_id] && formation = Formation.find_by(id: params[:formation_id])
            plays = formation.plays
            render json: PlaySerializer.new(plays)
        else
            render json: { message: "Could not find plays." }
        end
    end

    def show
        play = Play.find_by(id: params[:id])
        options = {
            include: [:formation]
        }
        render json: PlaySerializer.new(play, options)
    end
end
