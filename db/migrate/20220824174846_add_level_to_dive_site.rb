class AddLevelToDiveSite < ActiveRecord::Migration[7.0]
  def change
    add_column :dive_sites, :level, :string
  end
end
