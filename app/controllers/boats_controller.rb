class BoatsController < ApplicationController
  def show
    @boat = Boat.find(params[:id])
    dates = []
    @boat.booking_slots.each do |booking_slot|
      dates << booking_slot.availability_slot.date.strftime("%d-%m-%Y")
    end
    @blocked_dates = dates
  end

  def results
    @fix_navbar = true

    if params[:location].blank?
      @boats = Boat.all
    else
      @boats = Boat.near(params[:location], 30).where("capacity >= ?", params[:guests])
    end

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
