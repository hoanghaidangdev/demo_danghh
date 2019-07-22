class AddExamIdToLogExams < ActiveRecord::Migration[5.1]
  def change
    add_reference :log_exams, :exam, foreign_key: true
  end
end
