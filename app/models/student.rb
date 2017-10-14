class Student < ApplicationRecord

  has_many :self_reflections

  has_many :feedback_as_reviewer, class_name: 'Feedback', foreign_key: :reviewer_id
  has_many :feedback_as_reviewee, class_name: 'Feedback', foreign_key: :reviewee_id

  has_many :teams_as_student, class_name: 'Team', foreign_key: :student_id
  has_many :teams_as_teammate, class_name: 'Team', foreign_key: :teammate_id
  has_many :teammates, through: :teams_as_student, source: :teammate

  validates :name, presence: true

end
