class CreateFlashcards < ActiveRecord::Migration[7.1]
  def change
    create_table :flashcards do |t|
      t.string :content
      t.string :image
      t.string :audio

      t.timestamps
    end
  end
end
