# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
10.times do
  @reviewer = Reviewer.create(
    name: Faker::Name.name_with_middle,
    email: Faker::Internet.free_email
  )

  @cuisine = Cuisine.create(
    name: Faker::Restaurant.type,
    description: Faker::Lorem.sentence
  )

  4.times do
    @restaurant = @cuisine.restaurant.create(
      name: Faker::Restaurant.name,
      address: Faker::Address.full_address,
      description: Faker::Restaurant.description,
      image: Faker::LoremPixel.image(size: '700x300', is_gray: false)
    )

    5.times do
      @comment = @reviewer.comment.create(
        content: Faker::Restaurant.review,
        restaurant_id: @restaurant.id
      )
    end
  end
end

# 30.times do
#   Restaurant.create(
#     name: Faker::Restaurant.name,
#     address: Faker::Address.full_address,
#     description: Faker::Restaurant.description,
#     image: Faker::LoremFlickr.image(size: '50x60', search_terms: %w[restaurants food cuisine])
#   )
# end
