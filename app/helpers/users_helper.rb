module UsersHelper
	
	def user_information(info)
		unless info.nil? or info.empty?
			 info
		else
			"Ne ukazano"
		end
	end

end
