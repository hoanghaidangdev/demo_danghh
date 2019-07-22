class AddStatusToLogExams < ActiveRecord::Migration[5.1]
  def change
    add_column :log_exams, :status, :integer, default: 0
  end
end
