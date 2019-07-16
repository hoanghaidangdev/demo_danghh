class RemoveCodeFromLogExams < ActiveRecord::Migration[5.1]
  def change
    remove_column :log_exams, :code, :string
  end
end
