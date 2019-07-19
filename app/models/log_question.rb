class LogQuestion < ApplicationRecord
  belongs_to :log_exam
  belongs_to :question
  has_many :log_answers

  accepts_nested_attributes_for :log_answers
end
