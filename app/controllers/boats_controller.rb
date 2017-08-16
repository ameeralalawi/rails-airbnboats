class BoatsController < ApplicationController
  def show
    @boat = Boat.find(params[:id])
  end

  def results
    @fix_navbar = true
    @boats = Boat.all
    @boats2 = Boat.near(params[:locoation], 30).where("capacity >= ?", params[:guests])
  end

end
