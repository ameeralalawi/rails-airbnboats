class BoatsController < ApplicationController
  def show
    @boat = Boat.find(params[:id])
  end

  def results

  end

  private

  def boat_params
    params.require(:boat).permit(photos: [])
  end

end
