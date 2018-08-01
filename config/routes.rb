Rails.application.routes.draw do
  get 'sesiones/new'

  resources :usuarios
  root 'welcome#index'

  resources :entidades
  resources :tipo_entidades
  resources :sesiones

  get 'signup', to: 'usuarios#new', as: 'signup'
	get 'login', to: 'sesiones#new', as: 'login'
	get 'logout', to: 'sesiones#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
