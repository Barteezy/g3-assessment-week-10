Rails.application.routes.draw do
  root "home#index"

  get "/about" => "home#about"

  resources :gifs
end
