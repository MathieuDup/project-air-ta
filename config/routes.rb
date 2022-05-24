Rails.application.routes.draw do
  devise_for :users
  root to: 'teachers#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: %i[show edit update]
  resources :teachers do
    resources :appointments, only: %i[show new create edit update]
  end
end
