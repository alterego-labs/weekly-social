class SessionController < ApplicationController
  
  def new
  end

  def create
  	#binding.pry
  	user = User.find_by_login(params[:login]) 
  	if user and user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to user_path(user)
    else
  		redirect_to session_new_path
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to session_new_path
  end
end
