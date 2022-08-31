class AddCountryIsoToDiveSite < ActiveRecord::Migration[7.0]
  def change
    add_column :dive_sites, :country_iso, :string
  end
end
