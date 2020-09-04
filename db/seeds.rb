# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do 
    User.create([{
        name: Faker::Name.name,
        username: Faker::Internet.username,
        email: Faker::Internet.safe_email,
        password: Faker::Internet.password(min_length: 10)
    }])
end 

# 10.times do 
#     Photo.create([{
#         img_src: Faker::LoremPixel.image,
#         caption: Faker::Quotes::Rajnikanth.joke,
#         user_id: Faker::Number.within(range: 1..10)
#     }])
# end 