class FeedbackMailer < ApplicationMailer
  default from: 'cangwencook@gmail.com'

  def submit_feedback(user)
    @recipient = user
    mail(to: 'cangwencook@gmail.com', subject: "New Feedback Submitted")
  end
end
