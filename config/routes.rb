Rails.application.routes.draw do
  devise_for :users
  root "homes#top" # トップページ
  get "about", to: "homes#about" # /about にアクセスできるようにする

  resources :users
  resources :coffees

  delete '/logout' => 'users#logout'

  get "homes/top"
  get "homes/about"
  get "recommendations/create"
  get "recommendations/destroy"
  get "comments/create"
  get "comments/destroy"

  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
