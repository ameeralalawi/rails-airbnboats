class Host::BoatsController < ApplicationController
  def index
  end

  def new
    @boat = Boat.new
  end

  def create
  end
end
