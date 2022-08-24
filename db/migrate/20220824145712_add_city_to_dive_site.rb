class AddCityToDiveSite < ActiveRecord::Migration[7.0]
  def change
    add_column :dive_sites, :city, :string
  end
end
