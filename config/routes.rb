Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#dashboard"
  resources :habits do
    resources :daily_trackings, only: [ :new, :create, :edit, :update, :destroy ]
    resources :schedules
  end
end
