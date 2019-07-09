class AddSubjectIdToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_reference :questions, :subject, foreign_key: true
  end
end
