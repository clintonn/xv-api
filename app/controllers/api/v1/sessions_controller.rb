require 'logger'

class Api::V1::SessionsController < Api::V1::ApplicationController

  def create

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
