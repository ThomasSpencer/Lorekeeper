Rails.application.routes.draw do
  get 'landing/index'
  get 'landing/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :stories do
    resources :characters, :cities, :continents, :creatures, :landscapes, :planes, :players, :sessions
  end

  root 'landing#index'
end
