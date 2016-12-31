class AchievementsController < ApplicationController
    before_action :get_achievement, only: [:show, :edit]
    def index
        @achievements = Achievement.public_access
    end
    
    def show
    end

    def edit
    end
    
    def new
        @achievement = Achievement.new    
    end
    
    def create
        @achievement = Achievement.new(achievement_params)
        if @achievement.save
            redirect_to achievement_path(@achievement), notice: "Achievement has been created"
        else
            render :new
        end
    end
    
    def update
        @achievement = Achievement.find(params[:id]) 
        if @achievement.update_attributes(achievement_params)
            redirect_to achievement_path(@achievement)
        else
            render :edit
        end
    end

    def destroy
        Achievement.destroy(params[:id])
        redirect_to achievements_path
    end

    private
    def get_achievement
        @achievement = Achievement.find(params[:id]) 
    end
    def achievement_params
        params.require(:achievement).permit(:title, :cover_image, :featured, :description, :privacy)
    end
end