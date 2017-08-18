class Host::BookingsController < ApplicationController
  def index
    @ownerbookings = current_user.owner_bookings
  end

  def accept
    @booking = Booking.update(params[:id], {:status => 'approved'})
    make_booking_availability_slots(@booking)
    redirect_to host_bookings_path
  end

  def reject
    @booking = Booking.update(params[:id], {:status => 'rejected'})
    remove_booking_availability_slots(@booking)
    redirect_to host_bookings_path
  end

  private

  def make_booking_availability_slots(booking)

  end

  def remove_booking_availability_slots(booking)

  end
end
