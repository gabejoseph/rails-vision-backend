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
        password: 'password'
    }])
end 

30.times do 
    Listing.create([{
        img: Faker::LoremPixel.image,
        location: Faker::Address.street_address,
        title: Faker::Restaurant.name,
        description: Faker::Restaurant.description,
        star: Faker::Number.decimal(l_digits: 1, r_digits: 2),
        price: Faker::Number.decimal(l_digits: 3, r_digits: 2),
        user_id: Faker::Number.within(range: 1..5)
    }])
end 