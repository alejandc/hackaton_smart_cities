require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registration"}

  get 'example', to: :index, controller: 'example'

  root 'dashboard#index'

  get '/m', to: 'mobile#index'

  mount Sidekiq::Web => '/sidekiq'
end
