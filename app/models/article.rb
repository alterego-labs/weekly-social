# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  name       :string(255)
#  main_part  :text
#  user_id    :integer
#

class Article < ActiveRecord::Base
	validates :name,:main_part, presence: true
	belongs_to :user
end
