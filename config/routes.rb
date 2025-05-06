Rails.application.routes.draw do
  get "/carros", to: "carros#index"
  get "/carros/:id", to: "carros#show", as: "carros_show"
  get "/carros/new", to: "carros#new", as: "new_carro"
  post "/carros", to: "carros#create"
  get "/carros/:id/edit", to: "carros#edit", as: "carros_edit"
  patch "/carros/:id", to: "carros#update", as: "carros_update"
  delete "/carros/:id", to: "carros#destroy", as: "carros_destroy "
end
