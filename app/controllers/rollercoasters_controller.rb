class RollercoastersController < ApplicationController
  def create
    @rollercoaster = Rollercoaster.new
    @rollercoaster.save
  end

  def index
    @rollercoasters = Rollercoaster.all
  end
end
