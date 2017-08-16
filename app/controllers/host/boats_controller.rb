class Host::BoatsController < ApplicationController
  def index
    @host = current_user
  end

  def new
    @boat = Boat.new
    @host = current_user
  end

  def create
    @host = current_user
    @boat = Boat.new(boat_params)
    @boat.user = @host
    if @boat.save
      redirect_to host_boats_path
    else
      render :new
    end
  end

  private

  def boat_params
    params.require(:boat).permit(:name, photos: [])
  end
end
