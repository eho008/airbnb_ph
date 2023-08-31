class UsersController < ApplicationController
  def index
    @bookings = Booking.all
    @rollercoasters = Rollercoaster.all
  end

  private

  def article_params
    params.require(:users).permit(:avatar)
  end
end
