class UsersController < ApplicationController
    def login
    end
    def new
        @user = User.new
    end
    def create
        @user = User.new(params.require(:user)
        .permit(:user_name, :mail_address, :password, :check_password))
        if @user.save
            redirect_to user_login_path
        else
            render "new"
        end
    end
end
