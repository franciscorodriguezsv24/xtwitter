# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

def prepare
        username = "@#{Faker::Name.first_name.downcase}_#{Faker::Number.within(range: 1..100)}"
        name = Faker::Name.first_name
        lastname = Faker::Name.last_name
        email = Faker::Internet.email(domain: 'test')
        password = "$2Nefi22132556"
        {username: username, name: name, lastname: lastname, email: email, password: password}
end

def tweet(user_instance)
    body = Faker::Lorem.paragraph(sentence_count: 2)
    retweet = false 
    quote_id = nil 
    user_id = user_instance.tweets.create(body: body, retweet: retweet, quote_id: quote_id)
end 

    5.times do 
        user = User.create(prepare)
         
        5.times do 
            tweet(user)
        end 
    end 
