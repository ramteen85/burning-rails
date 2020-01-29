class UsersController < ApplicationController
    def index
    
    end

    def create
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            render json: {
                message: "registration successful",
                logged_in: true
            }
        else
            render json: {
                message: user.errors.full_messages,
                logged_in: false
            }
        end
    end

    private
        def user_params
            params.require(:user).permit(:name, :password, :password_confirmation)
        end
end
