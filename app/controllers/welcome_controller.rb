class WelcomeController < ApplicationController
	before_action :logout

	def index
		@user = User.new
	end

end
