class AddRequestedToLogExams < ActiveRecord::Migration[5.1]
  def change
    add_column :log_exams, :requested, :boolean, default: false
  end
end
