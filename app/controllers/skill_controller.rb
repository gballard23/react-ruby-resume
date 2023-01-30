class SkillController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    
    private
    
    def find_skill 
      Skill.find(params[:id])
    end
    
    def skill_params 
        params.permit(:name, :info_id)
    end 

    def render_not_found_response
        render json: { errors: 'Skill not found'}, status: :not_found
    end 

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end 

end
