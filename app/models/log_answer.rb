class LogAnswer < ApplicationRecord
  belongs_to :log_question
  belongs_to :answer
end
