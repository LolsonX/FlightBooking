Rails.application.routes.draw do
  get 'welcome/index'
  resources :seats
  resources :flights
  devise_for :users
  resources :air_connections
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/404", to: "errors#not_found"
  get "/422", to: "errors#unacceptable"
  get "/500", to: "errors#internal_error"
  root 'welcome#index'
end
