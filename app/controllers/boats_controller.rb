class BoatsController < ApplicationController
  def show
    @boat = Boat.find(params[:id])
  end

  def results
    @fix_navbar = true

  end

  def boat_params
    params.require(:boat).permit(photos: [])
  end

end
