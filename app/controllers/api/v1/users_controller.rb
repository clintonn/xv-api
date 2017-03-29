class API::V1::UsersController < Api::V1::ApplicationController

  def create
    binding.pry
  end

  private

  def user_params
    params.permit(:user).require(:first_name, :last_name, :username, :password, :password_confirmation)
  end

end
