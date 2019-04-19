class UsersController < ApplicationController
  before_action :load_user, only: %i|show edit update|

  def index
    @users = User.all
  end

  def show; end

  def edit; end

  def update
    @name = @user.name

    if @user.update_attributes user_params
      flash[:success] = "User is updated"
      redirect_to @user
    else
      flash.now[:danger] = "User isn't updated"
      render :edit
    end
  end

  private

  def load_user
    @user = User.find_by id: params[:id]
    return if @user

    flash[:warning] = "User not found"
    redirect_to root_url
  end

  def user_params
    params.require(:user).permit :name, :email
  end
end
