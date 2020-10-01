class SessionsController < ApplicationController

    def create
        @user = User.find_by(username: params["username"])
        binding.pry

        if (@user && @user.authenticate(params["password"]))
        # payload = { name: params["username"], id: @user.id }

        render json: {
            username: @user.username,
            id: @user.id
        }
    else
      render json: {
        errors: "Those credentials don't match anything we have in our database"
      }
    end
    end

end