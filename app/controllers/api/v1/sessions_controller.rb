require 'logger'

class Api::V1::SessionsController < Api::V1::ApplicationController

  def create
    @user = User.find_by(email: params[:email])
    if @user
      @user.authenticate(params[:password]) ? (
        jwt = Auth.issue({id: @user.id})
        render json: {
          jwt: jwt,
          user: { id: @user.id, firstName: @user.first_name, lastName: @user.last_name, email: @user.email, username: @user.username, resumes: @user.resumes }
        }
      ) : (render status: 500)
    else
      render status: 204
    end
  end

  def auth
    begin
      @id = Auth.decode(params[:jwt])[0]["id"]
      render json: User.find(@id)
    rescue
      render status: 401
    end
  end

end
