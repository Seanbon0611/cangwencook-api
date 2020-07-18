class ApplicationController < ActionController::API
  include ::ActionController::Cookies

  
  def admin?
    current_user.is_admin == true
  end
  
  def logged_in?
    !!token
  end
  
  def current_user
    user ||= User.find_by(id: user_id)
  end

  def user_first_name
    current_user.first_name
  end

  def user_email
    current_user.email
  end
  
  private

  def decoded_token
    begin
      JWT.decode(token, 'whenindoubt', true, { algorithm: 'HS256'})
    rescue JWT::DecodeError 
      [{}]
    end
  end
  
  def token
    #retrieve cookie sent with last request
    cookies.signed[:jwt]
  end
  
  def issue_token(user)
    JWT.encode({id: user.id}, 'whenindoubt', 'HS256')
  end
  
  def user_id
    decoded_token.first["id"]
  end
  
  def destroy_cookie
    cookies.delete(:jwt)
  end

  def logged_in_only
    if !token
        render json: {error: "You must be logged in"}, status: 401
    end
  end

  def admin_only
    unless admin?
        render json: {error: "Unauthorized Access"}, status: 403
    end
  end
  
end
