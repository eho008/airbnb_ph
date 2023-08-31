class UsersController < ApplicationController
  def index
    @bookings = Booking.all
    @rollercoasters = Rollercoaster.all
  end
end
