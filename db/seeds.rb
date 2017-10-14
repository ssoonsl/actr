student_names = %w(Haris Jacinta Kelvin KheeShian Nazmi Nicole Regent Sarah Shafiq Sherlynn Vincent z.test)
passcodes = ENV['STUDENT_PASSCODE'].split(' ')

puts 'Seeding students..'
student_names.zip(passcodes).each do |name_with_passcode|
  Student.create(name: name_with_passcode[0], passcode: name_with_passcode[1])
end

shopping_cart_teams = [['Haris', 'Nicole', 'Sarah'], ['Jacinta', 'Kelvin', 'Shafiq'], ['Sherlynn', 'Regent'], ['Vincent', 'Nazmi', 'KheeShian']]

puts 'Seeding teams..'
Team.permutate_team_into_pairs(shopping_cart_teams).each do |pair|
  Team.create(student: Student.find_by(name: pair[0]), teammate: Student.find_by(name: pair[1]))
end

puts 'Seeding admin..'
Admin.create(email: 'admin@alphacamp.tw', password: ENV['ADMIN_PASSWORD'])
