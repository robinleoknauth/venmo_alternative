# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

DESCRIPTIONS = %w(movies food drinks gas utilities dogfood water sundries)

mike = User.create(name: "Michael", nickname: "Mike")
bob = User.create(name: "Robert", nickname: "Bob")
joe = User.create(name: "Joseph", nickname: "Joe")
bbq = Group.create(name: "BBQ")
school = Group.create(name: "School")
mike.groups << bbq
school.users << [bob, joe]
bbq.users << joe
bbq.users << bob

5.times do
    Payment.create(user: mike, group: bbq, amount: rand(100), description: DESCRIPTIONS.sample)
end

15.times do
    Payment.create(user: [bob, joe].sample, group: [bbq, school].sample, amount: rand(100), description: DESCRIPTIONS.sample)
end

