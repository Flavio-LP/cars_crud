Rails.application.routes.draw do

  root "carros#index" # Define a rota raiz para o controlador Carros, ação index

  resources :carros
end
