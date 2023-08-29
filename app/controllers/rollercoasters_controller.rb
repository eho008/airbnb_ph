class RollercoastersController < ApplicationController
  def create
    @rollercoaster = Rollercoaster.new
    @rollercoaster.save
  end
end
