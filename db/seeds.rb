# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Teacher.create!(first_name: 'Edna', last_name: 'Krabappel', email: 'ekrabappel@example.com', password: 'pa55word')
Teacher.create!(first_name: 'David', last_name: 'Wright', email: 'mets@example.com', password: 'pa55word')
Teacher.create!(first_name: 'Semour', last_name: 'Skinner', email: 'sskinner@example.com', password: 'pa55word')

50.times do
  Student.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: 'pa55word', teacher_id = 1)
end

50.times do
  Student.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: 'pa55word', teacher_id = 2)
end

50.times do
  Student.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: 'pa55word', teacher_id = 3)
end

50.times do |count|
  Parent.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: 'pa55word', student_id = count)
end
