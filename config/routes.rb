require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}

  get 'example', to: :index, controller: 'example'

  root 'dashboard#index'

  mount Sidekiq::Web => '/sidekiq'
end
