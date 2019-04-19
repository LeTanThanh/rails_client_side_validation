Rails.application.routes.draw do
  root "users#index"

  resources :users, only: %i|show edit update|
end
