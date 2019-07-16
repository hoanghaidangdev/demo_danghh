class LogExam < ApplicationRecord
  enum status: [:denied, :requested, :approved, :doing, :submitted]

  belongs_to :user
  belongs_to :exam
  has_many :log_questions

  accepts_nested_attributes_for :log_questions

  scope :submitted, -> {where status: :submitted}

  def update_score
    score = 0
    self.exam.questions.each_with_index do |question, ques_index|
      log_question = self.log_questions[ques_index]
      check = true
      question.answers.each_with_index do |answer, ans_index|
        log_answer = log_question.log_answers[ans_index]
        check = false if log_answer.is_true != answer.is_true
      end
      score += 1 if check == true
    end
    self.update_attributes! score: score
  end
end
