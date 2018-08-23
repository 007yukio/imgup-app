class UsersController < ApplicationController
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        #@user.user_id = current_user.id
        if @user.save
            #redirect_to blogs_path(@user.id)
            #redirect_to user_path(@user.id)
            redirect_to new_session_path(@user.id)
        else
            render 'new'
        end
    end

    def show
        @user = User.find(params[:id])
    end

    private
        def user_params
            params.require(:user).permit(:name, :email, :password, :password_confirmation, :icon, :icon_cache)
        end
end
