Rails.application.routes.draw do
  root "users#index"

  resources :users, only: %i|show new create edit update destroy|
end
