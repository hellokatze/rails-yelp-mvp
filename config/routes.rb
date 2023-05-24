Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get '/restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_restaurant_review
  # post '/restaurants/:restaurant_id/reviews', to: 'reviews#create', as: :restaurant_reviews

  # get '/restaurants', to: 'restaurants#index', as: :restaurants
  # get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  # get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # post '/restaurants', to: 'restaurants#create'

  resources :restaurants, only: [:show, :index, :new, :create] do
    resources :reviews, only: [:new, :create]
  end
end
