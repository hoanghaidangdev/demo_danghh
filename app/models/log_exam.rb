class LogExam < ApplicationRecord
  belongs_to :user
  has_many :log_questions

  accepts_nested_attributes_for :log_questions
end
