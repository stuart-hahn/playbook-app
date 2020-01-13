class FormationsController < ApplicationController
    def index
        if params[:playbook_id] && playbook = Playbook.find_by(id: params[:playbook_id])
            formations = playbook.formations
            render json: FormationSerializer.new(formations)
        else
            render json: { message: "Could not find formations." }
        end
    end

    def show
        formation = Formation.find_by(id: params[:id])
        options = {
            include: [:playbook]
        }
        render json: FormationSerializer.new(formation, options)
    end
end
