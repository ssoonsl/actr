class Student < ApplicationRecord

  has_many :self_reflections

  validates :name, presence: true

end
