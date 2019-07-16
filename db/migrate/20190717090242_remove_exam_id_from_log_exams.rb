class RemoveExamIdFromLogExams < ActiveRecord::Migration[5.1]
  def change
    remove_column :log_exams, :exam_id, :integer
  end
end
