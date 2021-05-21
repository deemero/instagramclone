module SessionsHelper

  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    end
  end

  #Logs out the given user.
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
