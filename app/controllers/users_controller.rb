class UsersController < ApplicationController
  before_action :set_user, only: [:update, :edit]
    def edit
    authorize @user
  end

  def update
    @user.update(user_params)
    authorize @user
    if @user.save!
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:firstname, :email, :password, :photo)
  end

end
