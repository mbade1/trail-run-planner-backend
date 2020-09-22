class TrailsController < ApplicationController
    def index
        trails = Trail.all
        render json: trails
    end

    def create
        trail = Trail.new(trails_params)
        if trail.save
          render json: trail, except: [:created_at, :updated_at]
        else
          render json: {message: "Trail creation Failed"}
        end
    end

    def show
        trail = Trail.find_by(id: params[:id])
        if trail
          render json: trail
        else 
          render json: {message: "Journal not found."}
        end 
    end

    def destroy
        trail = Trail.find_by(id: params[:id])
        trail.destroy
    end
    
    private

    def trails_params 
        params.require(:trails).permit(:hiker_project_id, :name, :summary, :difficulty, :imgMedium, :length, :ascent, :descent, :conditionStatus, :conditionDetails, :conditionDate, :date_of_run)
    end
end
