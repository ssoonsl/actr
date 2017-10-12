class Student < ApplicationRecord

  has_many :self_reflections

  has_many :teammates, class_name: 'TeammateFeedback', foreign_key: :teammate_id

  validates :name, presence: true

end
