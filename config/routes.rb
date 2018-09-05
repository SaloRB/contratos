Rails.application.routes.draw do
  root 		'welcome#index'
  get 		'/signup',  to: 'usuarios#new'
  post    '/signup',  to: 'usuarios#create'
  get 		'/login',   to: 'sesiones#new'
  post 		'/login',   to: 'sesiones#create'
  delete 	'/logout',  to: 'sesiones#destroy'
  resources :usuarios
  resources :entidades
  resources :tipo_entidades
  resources :tipo_servicios
  resources :servicios
end
