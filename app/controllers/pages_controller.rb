class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @bands = Band.all
  end

  def show_dashboard
    @user = current_user
    @bands = Band.where(user_id: @user.id)
    @bookings = current_user.bookings
  end
end
