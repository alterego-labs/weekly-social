class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

    def authorize
      unless User.find_by_id(session[:user_id])
        redirect_to session_new_path , notice: "Please sign in!"
      end
    end

    def logout
      if User.find_by_id(session[:user_id])
      	user = User.find_by_id(session[:user_id])
        redirect_to user_path(user)
      end
    end


end
