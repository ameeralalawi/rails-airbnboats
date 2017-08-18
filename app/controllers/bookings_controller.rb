class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
  end

  def confirm
    #First, we want to put the booking dates into a range (15ofjuly..18ofjuly).
    @booking= Booking.new
    @booking.user = current_user
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
          redirect_to boat_path(@boat), notice: 'Dates are overlapping' and return
      end
    end
  end

  def create
    @booking = Booking.new
    @booking.start_date = params[:booking][:start_date]
    @booking.end_date = params[:booking][:end_date]
    @booking.user = current_user
    @booking.boat_id = params[:id]
    @booking.default_values
    @booking.intro = params[:booking][:intro]

    @booking.save
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:chkin, :chkout)
  end
end
