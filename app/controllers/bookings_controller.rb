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

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to bookings_path(current_user)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.rollercoaster = @rollercoaster
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to booking_path, notice: "Booking was successfully deleted!"
  end

  private

  def booking_params
    params.require(:booking).permit(:date_begin, :date_end)
  end

  def set_rollercoaster
    @rollercoaster = Rollercoaster.find(params[:rollercoaster_id])
  end

  def set_user
    @user = current_user
  end
end

# add the route for bookings index (use resources only inde)
# add the index action to the bookings controller
# @bookings = current_user.bookings
# create the view bookings/index.html.erb
# display the @bookings with @bookings.each
