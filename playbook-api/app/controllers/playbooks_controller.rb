class PlaybooksController < ApplicationController
    # GET /playbooks
    def index
        playbooks = Playbook.all
        render json: PlaybookSerializer.new(playbooks)
    end

    # GET /playbooks/1
    def show
        playbook = Playbook.find_by(id: params[:id])
        if playbook
            render json: PlaybookSerializer.new(playbook)
        else
            render json: { message: "Could not find playbook." }
        end
    end
end
