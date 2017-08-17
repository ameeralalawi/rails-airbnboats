class Host::BookingsController < ApplicationController

  def index
    @ownerbookings = current_user.owner_bookings
  end

  def accept
  end

  def reject
  end
end
