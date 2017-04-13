class Api::V1::ResumesController < Api::V1::ApplicationController

  def show
    
  end

  def create
    begin
      @id = Auth.decode(params[:jwt])[0]["id"]
      if @id = params[:user]
        @resume = Resume.create(user_id: @id, hash_url: HashGenerator.generate)
        render json: @resume
      else
        render status: 403
      end
    rescue JWT::DecodeError
      render status: 403
    end
  end

end
