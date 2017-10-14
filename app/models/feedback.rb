class Feedback < ApplicationRecord

  belongs_to :reviewer, class_name: 'Student', foreign_key: :reviewer_id
  belongs_to :reviewee, class_name: 'Student', foreign_key: :reviewee_id

  validates :answer1, presence: true
  validates :answer2, presence: true

end
