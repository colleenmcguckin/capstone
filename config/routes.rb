Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"
  get '/books' => "books#index"
  resources :songs
  resources :structures
end
