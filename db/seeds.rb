# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# カテゴリを作成
part1 = Category.create(name: 'part1')

# 画像フォルダの内容をもとにフラッシュカードを作成
flashcards_data = [
  { content: '城', image: 'castle.jpg', audio: 'castle.mp3', category: part1 },
  { content: '猫', image: 'cat.jpg', audio: 'cat.mp3', category: part1 },
  { content: '犬', image: 'dog.jpg', audio: 'dog.mp3', category: part1 },
  { content: '妖精', image: 'fairy.jpg', audio: 'fairy.mp3', category: part1 },
  { content: '山', image: 'mountain.jpg', audio: 'mountain.mp3', category: part1 },
  { content: '夜', image: 'night.jpg', audio: 'night.mp3', category: part1 },
  { content: 'ロボット', image: 'robot.jpg', audio: 'robot.mp3', category: part1 },
  { content: '侍', image: 'samurai.jpg', audio: 'samurai.mp3', category: part1 },
  { content: '船', image: 'ship.jpg', audio: 'ship.mp3', category: part1 },
  { content: '宇宙船', image: 'spaceship.jpg', audio: 'spaceship.mp3', category: part1 },
  { content: '夕日', image: 'sunset.jpg', audio: 'sunset.mp3', category: part1 },
  { content: '魔法使い', image: 'wizard.jpg', audio: 'wizard.mp3', category: part1 }
]

flashcards_data.each do |data|
  Flashcard.find_or_create_by(content: data[:content], image: data[:image], audio: data[:audio], category: data[:category])
end

