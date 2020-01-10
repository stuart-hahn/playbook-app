class FormationsController < ApplicationController
    def index
        if params[:playbook_id] && playbook = Playbook.find_by(id: params[:playbook_id])
            formations = playbook.formations
            render json: formations
        else
            render json: { message: "Could not find formations." }
        end
    end

    def show
    end
end
