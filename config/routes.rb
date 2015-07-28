Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"
  get '/books' => "books#index"
  resources :songs
  resources :structures
  resources :chords

  namespace :api do
    namespace :v1 do
      resources :songs
      resources :structures
      resources :chords
    end
  end
end
