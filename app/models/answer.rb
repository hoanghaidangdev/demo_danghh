class Answer < ApplicationRecord
  belongs_to :question
  has_many :log_exams

  validates :option, presence: true, length: {maximum: Settings.validations.strings.max_length}
end
