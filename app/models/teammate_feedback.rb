class TeammateFeedback < ApplicationRecord

  belongs_to :student
  belongs_to :reviewed_teammate, class_name: 'Student', foreign_key: :teammate_id

  validates :answer1, presence: true
  validates :answer2, presence: true

end
