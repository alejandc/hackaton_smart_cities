require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users

  root 'dashboard#index'

  scope '/m' do
	  root to: 'mobile#index'
  end

  mount Sidekiq::Web => '/sidekiq'
end
