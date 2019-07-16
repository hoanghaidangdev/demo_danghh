class ChangeTimeForExamToIntegerInExams < ActiveRecord::Migration[5.1]
  def change
    change_column :exams, :time_for_exam, :integer
  end
end
