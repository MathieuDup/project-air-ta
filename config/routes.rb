Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :user, only: %i[show edit update]
  resources :teacher
  resources :appointment, only: %i[show new create edit update]
end
