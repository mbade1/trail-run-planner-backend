class SessionsController < ApplicationController

    def create
        user = User.find_by(username: params["username"])
        if (user && user.authenticate(params["password"]))
            render json: user
        else
            render json: {
            message: "Username and/or Password are incorrect."
        }
        end
    end

end