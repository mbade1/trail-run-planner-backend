class JournalsController < ApplicationController
    before_action :set_journal 
    def index
        render json: @user.journals
    end

    def create
        journal = @user.journals.new(journal_params)
        if journal.save
          render json: journal, except: [:created_at, :updated_at]
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
      params.require(:journal).permit(:user_id, :trail_id)
    end
end
