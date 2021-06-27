class FeedbackController < ApplicationController
  def create
    feedback = Feedback.new(feedback_params)
    if feedback.save
      FeedbackMailer.submit_feedback(feedback).deliver_now
      render json: {message: "Feedback Sent"}, status: 200
    else
      render json: {message: "Error Sending Feedback"}, status: 400
    end
  end

  private
  def feedback_params
    params.permit(:name, :email, :message)
  end
end
