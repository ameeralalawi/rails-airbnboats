class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.boat_id = params[:id]
    @booking.default_values
    @booking.save
    redirect_to boats_booking_confirm_path(@booking.boat_id, @booking.id)
    # raise
  end

  def index
    @bookings = current_user.bookings
  end

  def confirm
    @boat = Boat.find(params[:id])
    @first_booking_date = Date.parse params[:chkin]
    @last_booking_date = Date.parse params[:chkout]
    @desired_range = (@first_booking_date..@last_booking_date)


    @boat.bookings.each do |booking|
      if (booking.start_date..booking.end_date).overlaps?(@desired_range)
        redirect_to "/boats/<%= @boat.id %>/bookings/confirm"
      end
    end
  end


  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
