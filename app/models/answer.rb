class Answer < ApplicationRecord
  belongs_to :question

  validates :option, presence: true, length: {maximum: Settings.validations.strings.max_length}
end
