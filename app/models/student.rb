class Student < ApplicationRecord

  has_many :self_reflections

  has_many :feedback_as_reviewer, class_name: 'Feedback', foreign_key: :reviewer_id
  has_many :feedback_as_reviewee, class_name: 'Feedback', foreign_key: :reviewee_id

  validates :name, presence: true

end
