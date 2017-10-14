class Team < ApplicationRecord

  belongs_to :student
  belongs_to :teammate, class_name: 'Student', foreign_key: :teammate_id

end
