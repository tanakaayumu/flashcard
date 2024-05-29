class Category < ApplicationRecord
  has_many :flashcards
  has_many :progresses
  has_many :users, through: :progresses
end