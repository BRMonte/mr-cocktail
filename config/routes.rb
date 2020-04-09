Rails.application.routes.draw do

  get 'reviews/create'

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create]
    resources :reviews, only: [:create]
  end

  root to: "cocktails#index"

  resources :doses, only: [:destroy]


end
