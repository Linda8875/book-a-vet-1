Rails.application.routes.draw do
  devise_for :vets
  devise_for :clients

  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :vets do 
    resources :slots
  end

  resources :pets
  resources :clients
end
