class AddSummaryToResumes < ActiveRecord::Migration[7.0]
  def change
    add_column :resumes, :summary, :text
  end
end
