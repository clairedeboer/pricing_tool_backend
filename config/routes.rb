Rails.application.routes.draw do
  resources :photos
  # resources :items
  # resources :users

  get '/items', to: 'items#index', as: 'items'
  get '/items/:id', to: 'items#show', as: 'item'
  post '/items', to: 'items#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
