class LogExam < ApplicationRecord
  enum status: [:denied, :requested, :approved, :doing, :submitted]

  belongs_to :user
  belongs_to :exam
  has_many :log_questions

  after_update :update_score, if: :status_changed?

  accepts_nested_attributes_for :log_questions

  scope :submitted, -> {where status: :submitted}

  def update_score
    if self.submitted?
      score = 0
      self.log_questions.each do |log_question|
        check = true
        log_question.log_answers.each do |log_answer|
          check = false if log_answer.is_true != log_answer.answer.is_true
        end
        score += 1 if check
      end
      self.update_column :score, score
    end
  end
end
