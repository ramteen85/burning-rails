class SessionsController < ApplicationController
    def create
        user = User.find_by(name:login_params[:name])
        if user && user.authenticate(login_params[:password])
            session[:user_id] = user.id
            render json: {
                message: "login successful",
                logged_in: true
            }
        else
            render json: {
                message: "invalid credentials",
                logged_in: false
            }
        end
    end

    private
        def login_params
            params.require(:login).permit(:name, :password)
        end

end
