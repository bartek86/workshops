# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
    User.create(
        email: Faker::Internet.email,
        password: Faker::Internet.password(8),
        firstname: Faker::Name.first_name,
        lastname: Faker::Name.last_name
    )
end

User.create(
    email: 'admin@example.com',
    password: 'admin123',
    firstname: 'The',
    lastname: 'Admin',
    admin: true)
    
