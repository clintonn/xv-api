class Api::V1::UsersController < Api::V1::ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      jwt = Auth.issue({id: @user.id})
      render json: {
        jwt: jwt,
        user: {id: @user.id, firstName: @user.first_name, lastName: @user.last_name, email: @user.email, username: @user.username, resumes: @user.resumes}
      }
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
  end

end
