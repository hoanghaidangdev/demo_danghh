class CreateLogAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :log_answers do |t|
      t.string :option
      t.boolean :is_true, default: false
      t.references :log_question, foreign_key: true

      t.timestamps
    end
  end
end
