class UsersController < ApplicationController
  def profile
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:photo)
  end
end
