class AddColumnsToReviewTable < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :rating, :integer
    add_column :reviews, :highlight, :text
    add_column :reviews, :tips, :text
    add_reference :reviews, :user, null: false, foreign_key: true
    add_reference :reviews, :dive_site, null: false, foreign_key: true
  end
end
