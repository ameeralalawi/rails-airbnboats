class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.boat_id = params[:id]
    @booking.default_values
    @booking.save
    redirect_to boats_booking_confirm_path(@booking.boat_id, @booking.id)
    raise
  end

  def index
  end

  def confirm
    raise
    # @boat = Boat.find(params[:id])
    # dates = []
    # @boat.booking_slots.each do |booking_slot|
    #   dates << booking_slot.availability_slot.date.strftime("%d-%m-%Y")
    # end
    # @blocked_dates = dates
  end

private

def booking_params
params.require(:booking).permit(:start_date, :end_date)
  end

end
