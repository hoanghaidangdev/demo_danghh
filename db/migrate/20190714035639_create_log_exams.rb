class CreateLogExams < ActiveRecord::Migration[5.1]
  def change
    create_table :log_exams do |t|
      t.integer :score, default: 0
      t.integer :teacher_id
      t.integer :exam_id
      t.boolean :submitted, default: false
      t.boolean :activated, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
