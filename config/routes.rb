Rails.application.routes.draw do
  resources :drivers, path: 'motoristas'

  get '/localizacao', to: 'tracking#index', as: 'tracking'

  root to: 'tracking#index'
end
