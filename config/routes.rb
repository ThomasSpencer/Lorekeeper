Rails.application.routes.draw do
  get 'landing/index'
  get 'landing/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :stories do
    resources :characters, :planes, :players, :sessions
  end

  resources :planes, only: [] do
    resources :continents
  end

  resources :continents, only: [] do
    resources :cities, :landscapes
  end

  resources :cities, only: [] do
    resources :characters
  end

  resources :landscapes, only: [] do
    resources :creatures
  end

  resources :users

  root 'landing#index'
end
