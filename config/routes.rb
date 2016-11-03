Rails.application.routes.draw do
  get 'landing/index'
  get 'landing/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'stories/index'

  root 'landing#index'
end
