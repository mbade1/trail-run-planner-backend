class JournalsController < ApplicationController
    before_action :set_journal 
    def index
        render json: @user.journals
    end

    def create
      binding.pry

        journal = @user.journals.new
        journal.trail_id = params[:journal][:trailId]
        journal.date_of_run = params[:journal][:dateOfRun]
        journal.imgMedium = params[:journal][:imgMedium]
        journal.name = params[:journal][:name]
        journal.length = params[:journal][:length]
        journal.difficulty = params[:journal][:difficulty]
        journal.stars = params[:journal][:stars]
        journal.starVotes = params[:journal][:starVotes]
        journal.conditionDetails = params[:journal][:conditionDetails]
        journal.conditionStatus = params[:journal][:conditionStatus]
        journal.latitude = params[:journal][:latitude]
        journal.longitude = params[:journal][:latitude]


        binding.pry

        if journal.save
          render json: journal
        else
          render json: {message: "Journal could not be created"}
        end
    end

    def show
        journal = @user.journals.find_by(id: params[:id])
        if journal
          render json: journal
        else 
          render json: {message: "Journal not found."}
        end 
    end

    def destroy
        journal = @user.journals.find_by(id: params[:id])
        journal.destroy
    end
  
    private

    def set_journal 
        @user = User.find_by(id: params[:user_id])
    end
  
    def journal_params
      params.require(:journal).permit(:user_id, :trail_id, :date_of_run)
    end
end
