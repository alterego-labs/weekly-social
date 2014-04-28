class Birthday < ActiveRecord::Migration
  def change
  	remove_column :users, :month, :string
  	remove_column :users, :day, :integer
  end
end
