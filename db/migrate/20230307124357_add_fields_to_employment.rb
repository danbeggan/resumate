class AddFieldsToEmployment < ActiveRecord::Migration[7.0]
  def change
    add_column :employments, :employer_name, :string
    add_column :employments, :start_date, :date
    add_column :employments, :end_date, :date
  end
end
