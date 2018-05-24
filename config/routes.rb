Rails.application.routes.draw do
  resources :ideas
  resources :users, only: %i[new create show index]

  root 'home#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  namespace :admin do
    resources :categories, only: [:index]
  end
end
