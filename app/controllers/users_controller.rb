class UsersController < ApplicationController
  def index
    @booking = Booking.all
  end
end
