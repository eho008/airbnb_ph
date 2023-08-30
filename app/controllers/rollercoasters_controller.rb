class RollercoastersController < ApplicationController
  before_action :set_user

  def index
    @rollercoasters = Rollercoaster.all
  end

  def new
    @rollercoaster = Rollercoaster.new
  end

  def show
    @rollercoaster = Rollercoaster.find(params[:id])
    @booking = Booking.new
  end

  def create
    @rollercoaster = Rollercoaster.new(rollercoaster_params)
    @rollercoaster.user = current_user

    if @rollercoaster.save

      redirect_to rollercoaster_path(@rollercoaster), notice: 'Your rollercoaster was created!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def rollercoaster_params
    params.require(:rollercoaster).permit(:name, :location, :price, :description, photos: [])
  end

  def set_user
    @user = current_user
  end

end
