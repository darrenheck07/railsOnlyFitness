Rails.application.routes.draw do
  resources :latstrapshome1s
  resources :latstraps1s
  resources :shouldersbicepshome1s
  resources :shouldersbiceps1s
  resources :chesttricepshome1s
  devise_for :users, controllers: { registrations: "registrations"}
  resources :chest_triceps1s
  get 'homepage/location'
  get 'homepage/5dayplan'
  get 'homepage/workouts'
  get 'homepage/additionalfeatures'
  get 'home/about'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
