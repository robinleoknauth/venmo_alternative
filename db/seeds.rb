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
anne = User.create(name: "Anne", nickname: "Annie")
rocky = User.create(name: "Raquel", nickname: "Rocky")
bbq = Group.create(name: "BBQ")
school = Group.create(name: "School")
lonely = Group.create(name: "Loneliness")
mike.groups << bbq
school.users << [bob, joe,anne]
bbq.users << [joe,bob,anne]

(5+rand(5)).times do
    Payment.create(user: mike, group: bbq, amount: 1+rand(50)+rand(50), description: DESCRIPTIONS.sample)
end

15.times do
    Payment.create(user: [bob, joe].sample, group: [bbq, school].sample, amount: 30+rand(70), description: DESCRIPTIONS.sample)
end

15.times do
    Payment.create(user: [bob, joe, anne].sample, group: [bbq, school].sample, amount: 10+rand(90), description: DESCRIPTIONS.sample)
end

