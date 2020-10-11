class JournalsController < ApplicationController
  before_action :set_journal
  def index
    render json: @user.journals
  end

  def create
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
    journal.longitude = params[:journal][:longitude]
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

  def update
    journal = @user.journals.find_by(id: params[:id])
    journal.t_shirt = params[:data][:tShirt]
    journal.shorts = params[:data][:shorts]
    journal.pants = params[:data][:pants]
    journal.hat = params[:data][:hat]
    journal.shoes = params[:data][:shoes]
    journal.socks = params[:data][:socks]
    journal.jacket = params[:data][:jacket]
    journal.gloves = params[:data][:gloves]
    journal.map = params[:data][:map]
    journal.watch = params[:data][:watch]
    journal.cellphone = params[:data][:cellPhone]
    journal.food = params[:data][:food]
    journal.water = params[:data][:water]
    journal.running_pack = params[:data][:runningPack]
    journal.first_aid_pack = params[:data][:firstAidPack]
    journal.sunscreen = params[:data][:sunScreen]
    journal.bugspray = params[:data][:bugSpray]
    if journal.save
      render json: journal
    else
      render json: {message: 'Journal could not be updated'}
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
