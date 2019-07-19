class AddQuestionsIdToLogQuestions < ActiveRecord::Migration[5.1]
  def change
    add_reference :log_questions, :question, foreign_key: true
  end
end
