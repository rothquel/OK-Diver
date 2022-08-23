class AddColumnsToUserModel < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birthdate, :date
    add_column :users, :country, :string
    add_column :users, :certified, :boolean
    add_column :users, :certification_date, :date
    add_column :users, :certification_body, :string
    add_column :users, :certification_level, :string
    add_column :users, :student_number, :string
  end
end
