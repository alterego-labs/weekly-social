class SessionController < ApplicationController

  before_filter :logout , except: [:destroy]
  
  def new
   @user = User.new
  end

  def create

  	@user = User.find_by_login(params[:user][:login]) 
  	if @user and @user.authenticate(params[:user][:password])
  		session[:user_id] = @user.id
  		redirect_to user_path(@user)
    else
  		redirect_to session_new_path , alert: "Wrong login or password"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_path
  end


end
