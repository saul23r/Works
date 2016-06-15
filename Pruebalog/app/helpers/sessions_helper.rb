module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    if (user_id = session[:user_id])
      @current_user ||=User.find_by(id: session[:user_id])
    elsif (user_id = cookies.signed[:user_id])
      if user && user.authenticated?(cookies[:remember_token])
        log_in(user)
        @current_user = user
      end

      end
end
  def logged_in?
    !current_user.nil?
  end

  def authenticate_user
    redirect_to root_path unless logged_in?
  end

  def forget(user)
    user.delete_cookie
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end




  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent.signed[:remember_token] = user.remember_token
  end



end