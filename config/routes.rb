Rails.application.routes.draw do
  get '/cliente', to: 'facturas#indexCliente', as:'cliente'
  resources :facturas
  devise_for :usuarios
  root 'megacities#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
