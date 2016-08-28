require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registration"}

  resources :suggestions

  get 'example', to: :index, controller: 'example'

  root 'dashboard#index'

  resources :incidents
  scope '/m' do
	  root to: 'mobile#index'
	  get 'signin', to: 'mobile#signin'
	  post 'signin', to: 'mobile#signin'
    get 'carga_trayecto', to: 'mobile#carga_trayecto'
	 get 'ver_incidentes', to: 'mobile#ver_incidentes'
	 get 'perfil', to: 'mobile#perfil'
   get 'registro', to: 'mobile#registro'
	get 'denuncia', to: 'mobile#denuncia'
	post 'denuncia', to: 'mobile#denuncia'
  end

  mount Sidekiq::Web => '/sidekiq'
end
