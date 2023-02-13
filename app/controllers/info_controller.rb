class InfoController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index 
        info = Info.all 
    
        render json: info
    end 

    def update 
        info = find_info
        info.update(info_params)
    end

    
    private 

    def find_info 
        info.find(params[:id])
    end 

    def info_params 
        params.permit(:name, :location, :phone, :email, :about )
    end 

    def render_not_found_response 
        render json: { errros: 'Info not found' }, status: :not_found
    end 

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end

end
