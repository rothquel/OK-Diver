class AddColumnsToLogTable < ActiveRecord::Migration[7.0]
  def change
    add_column :logs, :date, :date
    add_column :logs, :dive_number, :integer
    add_column :logs, :depth, :integer
    add_column :logs, :time_in, :time
    add_column :logs, :time_out, :time
    add_column :logs, :air_temp, :integer
    add_column :logs, :water_temp, :integer
    add_column :logs, :bar_start, :integer
    add_column :logs, :bar_end, :integer
    add_column :logs, :wet_suit, :integer
    add_column :logs, :weight, :integer
    add_column :logs, :visibility, :integer
    add_column :logs, :comments, :text
    add_column :logs, :dive_center, :string
  end
end
