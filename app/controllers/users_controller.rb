class UsersController < ApplicationController

    def index
      user = User.all
      render json: user
    end
    
    def create
      user = User.new
      user.username = params[:user][:user]
      user.password = params[:user][:password]
      if user.save
        render json: user
      else
        render json: {message: "Signup Failed"}
      end
    end

    def login 
      user = User.find_by(username: params[:username])
      if (user && user.authenticate(params[:password]))
        render json: user
      else
        render json: {message: "User Not Found. Click on Sign Up to make a new account."}
      end
    end

    def show
      user = User.find_by(username: params[:user])

      if user
        render json: user
      else 
        render json: {message: "User not found."}
      end 
    end

    def destroy
      user = User.find_by(id: params[:id])
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
