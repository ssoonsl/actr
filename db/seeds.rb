student_names = %w(Haris Jacinta Kelvin KheeShian Nazmi Nicole Regent Sarah Shafiq Sherlynn Vincent)

puts 'Seeding students..'
student_names.each do |student_name|
  Student.create(name: student_name)
end
