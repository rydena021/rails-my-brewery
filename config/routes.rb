Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :breweries, only: [:show, :index, :new, :create] do
    resources :beers, only: [:create, :destroy]
  end

  resources :styles, only: [:show]

  mount Attachinary::Engine => "/attachinary"

  root to: "breweries#index"
end
