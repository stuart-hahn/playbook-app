class PlaybooksController < ApplicationController
    def index
        @playbooks = Playbook.all

        render json: @playbooks
    end

    def show
        playbook = Playbook.find_by(id: params[:id])
        if playbook
            render json: playbook
        else
            render json: { message: "Could not find playbook." }
        end
    end
end
