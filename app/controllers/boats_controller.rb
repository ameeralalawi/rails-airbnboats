class BoatsController < ApplicationController
  def show
    @boat = Boat.find(params[:id])
  end

  def results

  end

end
