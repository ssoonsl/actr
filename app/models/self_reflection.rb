class SelfReflection < ApplicationRecord

  belongs_to :student

  validates :answer1, presence: true
  validates :answer2, presence: true

end
