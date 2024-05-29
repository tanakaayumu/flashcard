Rails.application.routes.draw do
  devise_for :users
  resources :categories do
    resources :flashcards
  end

  # ルートパスを設定
  root 'categories#index'
end

