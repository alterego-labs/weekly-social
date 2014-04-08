require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
	test 'Validate login' do
		user = User.new(login: users(:Lesha).login, password_digest: BCrypt::Password.create('MyString'))
		assert User.count == 1 , "Have "+User.count.to_s+" users with same login"
		User.destroy_all
		User.new(login: "", password_digest: BCrypt::Password.create('MyString')) 
		assert User.count == 0 , "Login can't be blank"
	end

end
