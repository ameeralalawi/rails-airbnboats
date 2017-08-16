class BoatsController < ApplicationController
  def show
    @boat = Boat.find(params[:id])
  end

  def results
    @fix_navbar = true
    @boats2 = Boat.near(params[:locoation], 30).where("capacity >= ?", params[:guests])
  end

  private

  def boat_params
    params.require(:boat).permit(photos: [])
  end

end
