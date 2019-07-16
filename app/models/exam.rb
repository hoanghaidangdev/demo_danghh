class Exam < ApplicationRecord
  has_many :exam_questions, dependent: :destroy
  has_many :questions, through: :exam_questions
  has_many :log_exams
  belongs_to :user

  validates :name, presence: true, uniqueness: {scope: :user},
    length: {maximum: Settings.validations.strings.max_length}
  validates :time_for_exam, presence: true
  validates :questions, presence: true
end
