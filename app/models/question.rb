class Question < ApplicationRecord
  belongs_to :user
  belongs_to :subject
  has_many :answers, dependent: :destroy
  has_many :exam_questions
  has_many :exams, through: :exam_questions

  validates :subject, presence: true,
    length: {maximum: Settings.validations.strings.max_length}
  validates :content, presence: true,
    length: {maximum: Settings.validations.texts.max_length}

  accepts_nested_attributes_for :answers, reject_if: :check_option
  mount_uploader :file, FileUploader

  private
  def check_option
    self.answers.any? {|answer| answer.option.blank?}
  end
end
