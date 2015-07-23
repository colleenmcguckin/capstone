Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"
  get '/books' => "books#index"
  resources :songs
  resources :structures

  namespace :api do
    namespace :v1 do
      resources :songs
    end
  end
end
