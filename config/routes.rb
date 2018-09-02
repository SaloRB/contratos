Rails.application.routes.draw do
  root 'welcome#index'
  get  'signup', to: 'usuarios#new',     as: 'signup'
  get  'login',  to: 'sesiones#new',     as: 'login'
  get  'logout', to: 'sesiones#destroy', as: 'logout'
  resources :usuarios
  resources :entidades
  resources :tipo_entidades
  resources :sesiones
  resources :tipo_servicios
  resources :servicios
end
