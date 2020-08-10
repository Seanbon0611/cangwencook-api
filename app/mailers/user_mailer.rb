class UserMailer < ApplicationMailer
  def password_reset(user)
    @recipient = user

    mail(to: @recipient.email, subject: "CanGwenCook password reset request")
  end
end
