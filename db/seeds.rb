# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all 
City.destroy_all
Gossip.destroy_all
Tag.destroy_all 
PrivateMessage.destroy_all
Comment.destroy_all
Like.destroy_all
PrivateMessage.destroy_all 

10.times do 

    Tag.create!(
        title: Faker::Lorem.sentence(word_count: 1),
        )

    City.create!(
        name: Faker::Address.city,
        zip_code: Faker::Address.zip_code
    )

    User.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        description: Faker::Lorem.sentence(word_count: 5),
        email: Faker::Internet.email,
        age: Faker::Number.between(from: 18, to: 99),
        city: City.all.sample
    )
end 

    Gossip.create!(
        title: Faker::Lorem.sentence(word_count: 2),
        content: Faker::Lorem.sentence(word_count: 9),
        user: User.all.sample,
        tag: Tag.all.sample 
    )

    Comment.create!(
        content: Faker::Lorem.sentence(word_count: 9),
        comment_type: Gossipe.all.sample,
        user: User.all.sample
    )

20.times do 
    Gossip.create!(
        title: Faker::Lorem.sentence(word_count: 2),
        content: Faker::Lorem.sentence(word_count: 9),
        user: User.all.sample,
        tag: Tag.all.sample 
    )

    choice = [Gossip.all.sample, Comment.all.sample]
    Comment.create!(
    content: Faker::Lorem.sentence(word_count: 10),
    comment_type: choice.sample,
    user: User.all.sample
    )

    Like.create!(
    user: User.all.sample,
    gossip: Gossip.all.sample
    )

    Like.create!(
    user: User.all.sample,
    comment: Comment.all.sample
    )
end

20.times do 
    PrivateMessage.create!(
        content: Faker::Lorem.sentence(word_count: 9),
        sender: User.all.sample,
        recipient: User.all.sample
    )
end


