class Team < ApplicationRecord

  belongs_to :student
  belongs_to :teammate, class_name: 'Student', foreign_key: :teammate_id

  def self.permutate_team_into_pairs(groups)
    groups.map { |group| group.permutation(2).to_a }.flatten(1)
  end

end
