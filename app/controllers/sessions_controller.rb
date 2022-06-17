class SessionsController < ApplicationController
    def create
        user = User.find_by(username: params[:username])
        if user&.authenticate(password: params[:password])
            sessin[:user_id] = user.id
            render json: user, status: :created
        else
            render json: {errors: "Invalid username or password"}, status: :unauthorized 
        end
    end

    def destroy
   
    end
end
