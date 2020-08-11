class PasswordResetsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user
      user.generate_password_token!
      UserMailer.password_reset(user).deliver_now
    end
    render json: {msg: "Email successful", email: user.email}, status:200
  end

  def edit
    render json: :ok
  end

  private

  def set_user
    @user = User.find_by(reset_password_token: params[:token])
    raise ResetPasswordError unless @user&.reset_password_token_expires_at && @user.reset_password_token_expires_at > Time.now
  end
end
