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
  end

private

def booking_params
params.require(:booking).permit(:start_date, :end_date)
  end

end
