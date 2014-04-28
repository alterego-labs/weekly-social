class AddColumnsToArticle < ActiveRecord::Migration
  def change
  	add_column :articles, :name, :string
  	add_column :articles, :main_part, :text
  	add_column :articles, :user_id, :integer
  	add_column :articles, :date_time, :datetime
  end
end
