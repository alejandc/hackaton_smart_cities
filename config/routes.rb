require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users

  get 'example', to: :index, controller: 'example'

  root 'dashboard#index'

  resources :incidents

  mount Sidekiq::Web => '/sidekiq'
end
