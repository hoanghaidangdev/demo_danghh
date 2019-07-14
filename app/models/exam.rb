class Exam < ApplicationRecord
  has_many :exam_questions, dependent: :destroy
  has_many :questions, through: :exam_questions
  belongs_to :user

  validates :name, presence: true, presence: true,
    length: {maximum: Settings.validations.strings.max_length}
  validates :time_for_exam, presence: true
  validate :check_blank_question

  private
  def check_blank_question
    if self.questions.blank?
      errors.add(:danger, "Can't create new exam with 0 question")
    end
  end
end
