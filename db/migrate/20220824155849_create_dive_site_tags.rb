class CreateDiveSiteTags < ActiveRecord::Migration[7.0]
  def change
    create_table :dive_site_tags do |t|

      t.timestamps
    end
  end
end
