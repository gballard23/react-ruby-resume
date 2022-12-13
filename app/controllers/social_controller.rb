class SocialController < ApplicationController

    def index 
        social = Social.all 
        render json: social
    end 

    private 


end
