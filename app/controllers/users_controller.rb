class UsersController < ApplicationController

    before_action :allow_cors

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def new 
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        respond_to do |format|
          if @user.save
            render json: @user 
          else
            # might need to edit this
            render json: @user.errors
          end
        end
    end

    def update
        respond_to do |format|
            if @user.update(user_params)
            render json: @user
            else
                render json: @user.errors
            end
        end
    end

    def destroy
        @user.destroy
        respond_to do |format|
            @deleted = { message: "User Deleted" }
            render json: @deleted
        end
    end

    private
        def user_params
            params.require(:user).permit(:name, :password, :password_confirmation)
        end

        def allow_cors
            headers['Access-Control-Allow-Origin'] = '*'
        end
    
        # Never trust parameters from the scary internet, only allow the white list through.
        def user_params
            params.require(:user).permit(:user_id)
        end
end
