class TeammateFeedback < ApplicationRecord

  belongs_to :student
  belongs_to :reviewed_teammate, class_name: 'Student', foreign_key: :teammate_id

end
