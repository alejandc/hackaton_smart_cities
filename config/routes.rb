require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users

  root 'dashboard#index'

  scope '/m' do
	  root to: 'mobile#index'
    get 'carga_trayecto', to: 'mobile#carga_trayecto'
  end

  mount Sidekiq::Web => '/sidekiq'
end
