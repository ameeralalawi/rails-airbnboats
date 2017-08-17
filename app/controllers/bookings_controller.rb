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
    #First, we want to put the booking dates into a range (15ofjuly..18ofjuly).
    @booking= Booking.new
    @booking.start_date = params[:chkin]
    @booking.end_date = params[:chkout]
    desired = @booking.start_date..@booking.end_date

    #We want to have an array of all the booking date ranges already existing for this boat.
    @booking.boat_id = params[:id]
    @boat = Boat.find(params[:id])
    booked = []
    @boat.bookings.each do |booking|
      booked << (booking.start_date..booking.end_date)
    end

    #Third, we want to compare our new booking date range with all the one existing and accept or refuse booking accordingly.
    booked.each do|booker|
      if booker.overlaps?(desired)
          redirect_to(:action => "show") and return
      end
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:chkin, :chkout)
  end

end
