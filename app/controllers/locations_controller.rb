class LocationsController < ApplicationController
  def create
    @users = User.all
    @location = Location.new(location_params)
    @location.save
  end

  private

end
