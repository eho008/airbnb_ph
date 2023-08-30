class UsersController < ApplicationController
  def show
    @bookings = Booking.all
    @rollercoasters = Rollercoaster.all
  end
end
