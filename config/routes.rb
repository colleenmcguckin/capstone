Rails.application.routes.draw do
  devise_for :users
  root to: "book#index"
end
