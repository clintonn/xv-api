class Api::V1::UsersController < Api::V1::ApplicationController

  def create
    binding.pry
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
  end

end
