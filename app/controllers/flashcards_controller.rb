class FlashcardsController < ApplicationController
  before_action :authenticate_user!

  def show
    @flashcard = Flashcard.find(params[:id])
    @next_flashcard = @flashcard.category.flashcards.where("id > ?", @flashcard.id).first
  end
end
