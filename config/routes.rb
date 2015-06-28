Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"
  get 'books' => "books#index"
  get '/' => "songs#index"
  get '/songs' => "songs#index"
  get '/songs/:id/edit' => "songs#edit"
  get '/songs/:id/perform' => "songs#perform"
  get '/songs/:id/print' => "songs#print"
end

