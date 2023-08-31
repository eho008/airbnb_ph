class RollercoastersController < ApplicationController
  before_action :set_user
  before_action :set_rollercoaster, only: %i[show edit update destroy]

  def index
    @rollercoasters = Rollercoaster.all
    @markers = @rollercoasters.geocoded.map do |rc|
      {
        lat: rc.latitude,
        lng: rc.longitude
      }
    end
    if params[:query] && params[:query] != ''
      @rollercoasters = Rollercoaster.search_by_info(params[:query])
    else
      @rollercoasters = Rollercoaster.all
    end
  end

  def new
    @rollercoaster = Rollercoaster.new
  end

  def show
    @booking = Booking.new
    @reviews = @rollercoaster.reviews
  end

  def edit
  end

  def update
    @rollercoaster.update(rollercoaster_params)
    redirect_to rollercoaster_path(@rollercoaster)
  end

  def create
    @rollercoaster = Rollercoaster.new(rollercoaster_params)
    @rollercoaster.user = current_user

    if @rollercoaster.save
      redirect_to user_path(@rollercoaster), notice: 'Your rollercoaster was created!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    if @rollercoaster.user == current_user
      @rollercoaster.destroy
      redirect_to user_path
    end
  end

  private

  def rollercoaster_params
    params.require(:rollercoaster).permit(:name, :location, :price, :description, photos: [])
  end

  def set_rollercoaster
    @rollercoaster = Rollercoaster.find(params[:id])
  end

  def set_user
    @user = current_user
  end

end
