class CreateDiveSites < ActiveRecord::Migration[7.0]
  def change
    create_table :dive_sites do |t|

      t.timestamps
    end
  end
end
