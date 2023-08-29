class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to @flat, notice: 'Your flat was created!'
    else
      render :new
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :location, :price_per_night, :description, :property_type)
  end
end
