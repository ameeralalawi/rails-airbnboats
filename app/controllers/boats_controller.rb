class BoatsController < ApplicationController
  def show
    @boat = Boat.find(params[:id])
  end

  def results
    @fix_navbar = true
    @boats = Boat.near(params[:location], 30).where("capacity >= ?", params[:guests])

    @boats2 = Boat.near(params[:location], 30).where("capacity >= ?", params[:guests]).where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@boats) do |boat, marker|
      marker.lat boat.latitude
      marker.lng boat.longitude
      # marker.infowindow render_to_string(partial: "/boats/map_box", locals: { boat: boat })
    end
  end

  private

  def boat_params
    params.require(:boat).permit(photos: [])
  end

end
