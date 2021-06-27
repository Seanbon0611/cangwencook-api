class CollaborateController < ApplicationController
  def create
    collaborate = Collaborate.new(collab_params)
    if collaborate.save
      CollaborateMailer.request_collaboration(collaborate).deliver_now
      render json: {message: "Request Sent"}, status: 200
    else
      render json: {message: "Error Sending Request"}, status: 400
    end
  end

  private
  def collab_params
    params.permit(:name, :email, :message)
  end
end
