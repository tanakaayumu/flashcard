class AddCategoryIdToFlashcards < ActiveRecord::Migration[7.1]
  def change
    add_column :flashcards, :category_id, :integer
  end
end
