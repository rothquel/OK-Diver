class AddImageToDiveSiteTable < ActiveRecord::Migration[7.0]
  def change
    add_column :dive_sites, :image, :string
  end
end
