class CreateLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :logs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :dive_site, null: false, foreign_key: true

      t.timestamps
    end
  end
end
