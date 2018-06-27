class UsersController < ApplicationController
    def show
  		@user = User.find(params[:id])
  		@post_pages = @user.bookers
  		@booker = Booker.new
    end

    def edit
		  @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])
      if@user.update(user_params)
	      redirect_to user_path(@user.id)
      else
        render :edit
      end
    end

    def index
      @booker = Booker.new
      @users = User.all
    end

    before_action :correct_user, only: [:edit, :update]

  private

    def user_params
    	params.require(:user).permit(:name, :profile_image, :user, :user_body)
    end

    def correct_user
    user = User.find(params[:id])
    if current_user != user
      redirect_to root_path
    end
  end
end