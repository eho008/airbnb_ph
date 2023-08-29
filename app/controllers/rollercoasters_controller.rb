class RollercoastersController < ApplicationController

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
    if @rollercoaster.save
      redirect_to @rollercoaster, notice: 'Your rollercoaster was created!'
    else
      render :new
    end
  end

  private

  def rollercoaster_params
    params.require(:rollercoaster).permit(:name, :location, :price, :description)
  end
end
