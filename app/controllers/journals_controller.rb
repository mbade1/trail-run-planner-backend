class JournalsController < ApplicationController
    def index
        journals = Journal.all
        render json: journals
    end

    def create
        journal = Journal.new(journal_params)
        if journal.save
          render json: journal, except: [:created_at, :updated_at]
        else
          render json: {message: "Journal creation Failed"}
        end
    end

    def show
        journal = Journal.find_by(id: params[:id])
        if journal
          render json: journal
        else 
          render json: {message: "Journal not found."}
        end 
    end

    def destroy
        journal = Journal.find_by(id: params[:id])
        journal.destroy
    end
  
      private
  
      def journal_params
          params.require(:journal).permit(:hiker_project_id, :name, :summary, :difficulty, :imgMedium, :length, :ascent, :descent, :conditionStatus, :conditionDetails, :conditionDate, :date_of_run)
      end
end
