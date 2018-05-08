module SessionsHelper
  def log_in(user)
    sessions[:user_id] = user.id
  end

  @current_user ||= User.find_by(id: session[:user_id])

  def logged_in
    !current_user.nil?
  end
end
