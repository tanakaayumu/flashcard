Rails.application.routes.draw do
  devise_for :users
  root to: 'categories#index'
  resources :categories, only: [:index, :show] do
    resources :flashcards, only: [:show]
  end
end

