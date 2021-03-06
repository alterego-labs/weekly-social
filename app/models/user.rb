# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  login           :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  name            :string(255)
#  surname         :string(255)
#  sex             :string(255)
#  country         :string(255)
#  home_city       :string(255)
#  avatar_url      :string(255)
#  birthday        :date
#

class User < ActiveRecord::Base
	validates :login, :password_digest, :name, :surname, presence: true
	validates :login, uniqueness: true
	has_many :articles
  	has_secure_password


end

