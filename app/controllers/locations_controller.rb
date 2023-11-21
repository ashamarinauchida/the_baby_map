class LocationsController < ApplicationController
  before_action :set_location, only: [:edit, :update, :destroy]

  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new
    @location.save
  end

  def edit; end

  def update
    @location.update
  end

  def destroy
    @location.destroy
  end

  private

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:name, :local_name, :location_type,
      :latitude, :longitude, :country, :city, :street_address, :transport_stop,
      :description, :phone_number)
  end

end
