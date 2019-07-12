class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :subject
      t.text :content
      t.references :user, foreign_key: true
      t.string :file

      t.timestamps
    end
  end
end
