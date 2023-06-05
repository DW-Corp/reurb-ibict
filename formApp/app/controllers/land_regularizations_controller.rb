class LandRegularizationsController < ApplicationController
  def new
    @land_regularization = LandRegularization.new
  end

  def create
    @land_regularization = LandRegularization.new(land_regularization_params)
    if @land_regularization.save
      redirect_to root_path, notice: 'Land regularization data was successfully saved.'
    else
      render :new
    end
  end

  private

  def land_regularization_params
    params.require(:land_regularization).permit(:state, :city, :polygonal_area)
  end
end
