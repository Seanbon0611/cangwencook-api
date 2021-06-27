class CollaborateMailer < ApplicationMailer
  default from: 'cangwencook@gmail.com'

  def request_collaboration(user)
    @recipient = user
    mail(to: 'cangwencook@gmail.com', subject: "New Collaboration Request")
  end
end
