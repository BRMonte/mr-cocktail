Rails.application.routes.draw do
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/new'
  get 'cocktails/create'
  root to: "cocktails#index"
end
