Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :breweries, only: [:show, :index, :new, :create]

  root to: "breweries#index"
end
