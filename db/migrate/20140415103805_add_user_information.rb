class AddUserInformation < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_column :users, :surname,  :string
  	add_column :users, :sex , :string
    add_column :users, :country, :string
    add_column :users, :home_city,:string
    add_column :users, :month, :string
    add_column :users, :avatar_url,  :string
    add_column :users, :day,:integer
    add_column :users, :year,:integer
  end
end
