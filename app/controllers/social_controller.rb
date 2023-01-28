class SocialController < ApplicationController

    def index 
        social = Social.all 
        render json: social
    end 

    def update 
        social = find_info
        social.update(social_params)
        render json: social 
    end 

    private
    
    def find_social 
      Social.find(params[:id])
    end
    
    def social_params 
        params.permit(:name, :link)
    end 

    def render_not_found_response
        render json: { errors: 'Social media not found'}, status: :not_found
    end 

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end 



end
