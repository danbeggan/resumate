class CreateEmployments < ActiveRecord::Migration[7.0]
  def change
    create_table :employments do |t|
      t.string :job_title
      t.string :company
      t.date :start
      t.date :end
      t.text :description
      t.belongs_to :resume

      t.timestamps
    end
  end
end
