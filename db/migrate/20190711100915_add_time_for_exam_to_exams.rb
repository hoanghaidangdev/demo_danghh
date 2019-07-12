class AddTimeForExamToExams < ActiveRecord::Migration[5.1]
  def change
    add_column :exams, :time_for_exam, :time
  end
end
