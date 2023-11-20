Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index


  root "main#main"


  get "/login",to: "sessions#new"
  post "/login",to: "sessions#create"
  delete "/logout",to: "sessions#destroy"

  resources :authors
  resources :albums
  resources :events

  resources :tickets


  get "/authors/events/:id",to: "events#myevents"

  post "hello",to: "events#random"


end
