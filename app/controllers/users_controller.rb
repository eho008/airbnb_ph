class UsersController < ApplicationController
  def show
    @bookings = Booking.all
    @rollercoasters = Rollercoaster.all
  end
  def index
    @booking = Booking.all
  end
end
