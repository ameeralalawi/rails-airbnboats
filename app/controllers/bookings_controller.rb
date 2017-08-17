class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.boat_id = params[:id]
    @booking.default_values
    @booking.save
    redirect_to boats_booking_confirm_path(@booking.boat_id, @booking.id)
  end

  def index
  end

  def confirm
    boat_id = params[:id]
    boat = Boat.find(boat_id)
    dates = []
    boat.booking_slots.each do |booking_slot|
      dates << booking_slot.availability_slot.date
    end
    @blocked_dates = dates.to_json
  end

private

def booking_params
params.require(:booking).permit(:start_date, :end_date)
  end

end
