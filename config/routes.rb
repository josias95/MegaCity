Rails.application.routes.draw do
  resources :megacities
  get '/usuario', to: 'usuario#sesion'
  post '/usuario', to: 'usuario#sesion'
  get '/factura', to: 'factura#subir', as: 'facturas'
  post '/factura', to: 'factura#subir'
  get '/factura/show', to: 'factura#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
