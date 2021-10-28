Rails.application.routes.draw do
  resources :bits
  resources :categories
  resources :demos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
