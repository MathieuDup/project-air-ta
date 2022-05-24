Rails.application.routes.draw do
  devise_for :users
  root to: 'teachers#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :user, only: %i[show edit update]
  resources :teacher do
    resources :appointment, only: %i[show new create edit update]
  end
end
