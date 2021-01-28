class PasswordResetsController < ApplicationController
  before_action :set_user, only: [:edit, :update]
  def create
    user = User.find_by(email: params[:email])
    if user
      user.generate_password_token!
      UserMailer.password_reset(user).deliver_now
      render json: {msg: "Email successful", email: user.email}, status:200
    else 
      render json: {msg: "Error", error: "There was an error"}, status:500
    end
  end
 
  def edit
    render json: :ok
  end

  def user_token
    user = User.find_by(email: params[:email])
    if user
      render json: {token: user.reset_password_token}
    else
      render json: {error: "There was an error"}
    end
  end

  def reset
    user = User.find_by(reset_password_token: params[:token])
    if user
      user.update(password: params[:password], password_confirmation: params[:password_confirmation])
      if user.save
        user.clear_password_token!
        render json: {msg: "Success"}, status: 200
      else
        render json: {error: "Password not changed"}, status: 401
      end
    end
  end

  private
  def set_user
    @user = User.find_by(reset_password_token: params[:token])
  end

end
