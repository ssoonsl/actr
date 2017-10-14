student_names = %w(Haris Jacinta Kelvin KheeShian Nazmi Nicole Regent Sarah Shafiq Sherlynn Vincent)

puts 'Seeding students..'
student_names.each do |student_name|
  Student.create(name: student_name)
end

shopping_cart_teams = [['Haris', 'Nicole', 'Sarah'], ['Jacinta', 'Kelvin', 'Shafiq'], ['Sherlynn', 'Regent'], ['Vincent', 'Nazmi', 'KheeShian']]

puts 'Seeding teams..'
Team.permutate_team_into_pairs(shopping_cart_teams).each do |pair|
  Team.create(student: Student.find_by(name: pair[0]), teammate: Student.find_by(name: pair[1]))
end
