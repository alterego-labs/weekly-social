class DeleteColumnsFromArticle < ActiveRecord::Migration
  def change
  	remove_column :articles, :date_time, :datetime
  end
end
