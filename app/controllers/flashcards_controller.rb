class FlashcardsController < ApplicationController
  before_action :authenticate_user!

  def show
    @flashcard = Flashcard.find(params[:id])
    @next_flashcard = @flashcard.category.flashcards.where("id > ?", @flashcard.id).first

    # 学習完了時の進捗を更新
    if @next_flashcard.nil?
      progress = current_user.progresses.find_or_create_by(category: @flashcard.category)
      progress.update(completed_count: 0) if progress.completed_count.nil?
      progress.increment!(:completed_count)
    end
  end
end
