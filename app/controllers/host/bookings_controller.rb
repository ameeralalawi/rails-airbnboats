class Host::BookingsController < ApplicationController
  def index
    if current_user
      @ownerbookings = current_user.owner_bookings
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    make_booking_availability_slots(@booking)
    redirect_to host_bookings_path
  end

  def reject
    @booking = Booking.find(params[:id])
    remove_booking_availability_slots(@booking)
    redirect_to host_bookings_path
  end

  private

  def make_booking_availability_slots(booking)
    start_d = booking.start_date
    end_d = booking.end_date
    count = 0
    (start_d..end_d).each do |d|
      if AvailabilitySlot.exists?(boat_id: booking.boat_id, date: d)
        count += 1
      end
    end
    if count == (start_d..end_d).count
      (start_d..end_d).each do |d|
        availslot = AvailabilitySlot.where(boat_id: booking.boat_id, date: d).take
        BookingSlot.create(availability_slot_id: availslot.id, booking_id: booking.id)
      end
      booking.update(:status => 'approved')
    end
  end

  def remove_booking_availability_slots(booking)
    if booking.status = "approved"
      booking.booking_slots.each do |slot|
        slot.destroy
      end
      booking.update(:status => 'rejected')
    end
  end
end
