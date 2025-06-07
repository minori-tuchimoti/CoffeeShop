Rails.application.routes.draw do
  get "users/index"
  get "users/show"
  devise_for :users
  root "homes#top" # トップページ
  get "about", to: "homes#about" # /about にアクセスできるようにする
  resources :users






  get "homes/top"
  get "homes/about"
  get "recommendations/create"
  get "recommendations/destroy"
  get "comments/create"
  get "comments/destroy"
  get "coffees/index"
  get "coffees/show"
  get "coffees/new"
  get "coffees/edit"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
