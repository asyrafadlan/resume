Rails.application.routes.draw do
  resources :curiculars
  resources :experiences
  resources :educations
  resources :users
  #get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
