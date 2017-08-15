class UsersController < ApplicationController
  def profile
  end

  def user_params
    params.require(:user).permit(:photo)
  end
end
