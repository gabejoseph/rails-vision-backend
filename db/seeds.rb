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

10.times do 
    Listing.create([{
        img: Faker::LoremPixel.image,
        location: Faker::Address.city,
        title: Faker::Book.title,
        description: Faker::Marketing.buzzwords,
        star: rand(0.00..5.00),
        price: rand(0.00..1000.00)
    }])
end 