class Subject < ApplicationRecord
  has_many :questions

  validates :name, uniqueness:true, presence:true,
    length: {maximum: Settings.validations.strings.max_length}
end
