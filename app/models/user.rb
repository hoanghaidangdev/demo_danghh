class User < ApplicationRecord
  enum role: [:student, :teacher, :admin]

  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
    :validatable, :confirmable

  has_many :questions
  has_many :exams

  validates :name, presence: true
  validates :email, format: {with: Regexp.new(Settings.validations.email_regex)},
    uniqueness: true
  validates :phone, presence: true
  validates :avatar, presence: true

  mount_uploader :avatar, AvatarUploader
end
