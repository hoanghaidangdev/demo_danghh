class LogExam < ApplicationRecord
  enum status: [:denied, :requested, :approved, :doing, :submitted]

  belongs_to :user
  belongs_to :exam
  has_many :log_questions

  after_update :update_score, if: :status_changed?

  accepts_nested_attributes_for :log_questions

  def update_score
    return unless self.submitted?
    score = 0
    self.log_questions.each do |log_question|
      score += 1 if log_question.question.answers.true_answers.ids
        .sort == log_question.log_answers.pluck(:answer_id).sort
    end
    self.update_column :score, score
  end
end
