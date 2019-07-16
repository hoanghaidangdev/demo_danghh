class RemoveActivatedFromLogExams < ActiveRecord::Migration[5.1]
  def change
    remove_column :log_exams, :activated, :string
    remove_column :log_exams, :boolean, :string
  end
end
