# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |i|
  Student.create(name: "S-#{i+1}")
  Teacher.create(name: "T-#{i+1}")
  Course.create(name: "C-#{i+1}", teacher_id: i+1)

  ScRelation.create(student_id: i+1, course_id: i+1)
  StRelation.create(student_id: i+1, teacher_id: i+1)
end
