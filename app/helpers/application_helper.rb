module ApplicationHelper

	def current_user 
      @current_user = User.all.find_by_id(session[:user_id])
 	end

end
