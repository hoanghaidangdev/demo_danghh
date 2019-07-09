class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
    :validatable, :confirmable

  validates :name, presence: true
  validates :email, format: {with: Regexp.new(Settings.EMAIL_REGEX)},
    uniqueness: true
  validates :phone, presence: true
  validates :avatar, presence: true

  mount_uploader :avatar, AvatarUploader
end
