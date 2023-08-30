class BookingsController < ApplicationController
  before_action :set_rollercoaster, only: %i[new create]
  before_action :set_user, only: %i[create]

  def index
    @bookings = Booking.where(user: current_user)
  end

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.rollercoaster = @rollercoaster
    @booking.user = @user
    if @booking.save
      redirect_to rollercoasters_path(@booking.rollercoaster_id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date_begin, :date_end)
  end

  def set_rollercoaster
    @rollercoaster = Rollercoaster.find(params[:rollercoaster_id])
  end

  def set_user
    @rollercoaster = User.find(params[:user_id])
  end
end
