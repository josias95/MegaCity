Rails.application.routes.draw do
  resources :premios
  resources :eventos
  resources :almacens
  get '/cliente', to: 'facturas#indexCliente', as:'cliente'
  resources :facturas
  devise_for :usuarios
  root 'megacities#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
