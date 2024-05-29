# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

fruits = Category.create(name: 'Fruits')
vehicles = Category.create(name: 'Vehicles')

Flashcard.create([
  { content: 'りんご', image: 'apple.jpg', audio: 'apple.mp3', category: fruits },
  { content: 'バナナ', image: 'banana.jpg', audio: 'banana.mp3', category: fruits },
  { content: '車', image: 'car.jpg', audio: 'car.mp3', category: vehicles },
  { content: '自転車', image: 'bicycle.jpg', audio: 'bicycle.mp3', category: vehicles }
])
