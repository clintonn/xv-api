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
      render status: 401
    end
  end

  def destroy
    begin
      if params[:jwt]
        verification = Auth.decode(params[:jwt])
        render status: 202
      else
        render status: 500
      end
    rescue JWT::VerificationError
        render status: 500
    rescue
        render status: 500
    end
  end

end
