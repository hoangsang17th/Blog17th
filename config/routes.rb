Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get '/about-me', to: 'home#aboutme'
  resources :posts
  resources :comments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
