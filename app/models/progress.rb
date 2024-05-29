class Progress < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :completed_count, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
