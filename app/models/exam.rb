class Exam < ApplicationRecord
  has_many :exam_questions, dependent: :destroy
  has_many :questions, through: :exam_questions
  belongs_to :user

  validates :name, presence: true, presence: true,
    length: {maximum: Settings.validations.strings.max_length}
  validates :time_for_exam, presence: true
end
