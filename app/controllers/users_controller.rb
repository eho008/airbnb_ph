class UsersController < ApplicationController
<<<<<<< HEAD
  def show
    @bookings = Booking.all
    @rollercoasters = Rollercoaster.all
=======
  def index
    @booking = Booking.all
>>>>>>> master
  end
end
