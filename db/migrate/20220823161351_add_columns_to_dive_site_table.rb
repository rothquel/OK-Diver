class AddColumnsToDiveSiteTable < ActiveRecord::Migration[7.0]
  def change
    add_column :dive_sites, :name, :string
    add_column :dive_sites, :description, :text
    add_column :dive_sites, :latitude, :float
    add_column :dive_sites, :longitude, :float
    add_column :dive_sites, :country, :string
    add_column :dive_sites, :address, :string
    add_column :dive_sites, :type, :string
  end
end
