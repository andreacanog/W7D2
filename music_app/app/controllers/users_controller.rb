class UsersController < ApplicationController

    # before_action :require_logged_out, only: []

    def new 
        @user = User.new
        render :new
    end

    def show
        @user = User.find_by(id: params[:id])
        render :show
    end

    def create
        @user = User.new(user_params)
        if @user.save!
            login(@user)
            redirect_to user_url(@user)
        else
            render :new
        end
    end


    private 

    def user_params
        params.require(:user).permit(:email, :password)
    end
end
