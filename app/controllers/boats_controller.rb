class BoatsController < ApplicationController
  def show
  end

  def results
  end

  def boat_params
    params.require(:boat).permit(photos: [])
  end

end
