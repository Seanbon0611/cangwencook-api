class AuthController < ApplicationController
  def login 
    
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      my_token = issue_token(user)
    end
    if my_token
      cookies.signed[:jwt] = {value: my_token, httponly: true, expires: 3.hours.from_now}
      respond_logged_in 45.minutes.from_now
    else
        render json: {error: 'Username or Password incorrect', loggedIn: false}, status: 401
    end
  end

  def auto_login
    if logged_in?
      cookies.signed[:jwt] = {value: token, httponly: true, expires: 3.hours.from_now}
      respond_logged_in 10.minutes.from_now
    end
  end

  def logout
    destroy_cookie
    render json: {msg: 'Logging out'}, status: 200
  end

  def respond_logged_in(expiry = nil)
    render json: {email: user_email, firstName: user_first_name, isAdmin: admin?, msg: "Login Success", expires: expiry}, status: 200
end

end
