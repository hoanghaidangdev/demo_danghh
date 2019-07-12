class RemoveSubjectFromQuestion < ActiveRecord::Migration[5.1]
  def change
    remove_column :questions, :subject, :string
  end
end
