class AddAnswerIdToLogAnswers < ActiveRecord::Migration[5.1]
  def change
    add_reference :log_answers, :answer, foreign_key: true
  end
end
