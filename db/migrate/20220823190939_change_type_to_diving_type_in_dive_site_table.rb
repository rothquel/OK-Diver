class ChangeTypeToDivingTypeInDiveSiteTable < ActiveRecord::Migration[7.0]
  def change
    rename_column :dive_sites, :type, :dive_type
  end
end
