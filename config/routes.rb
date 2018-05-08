Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_up: 'register', sign_out:'logout'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  # resources :rooms
  # resources :messages
  root to: "rooms#index"

  resources :rooms do
    resources :messages, only: [:create]
  end
  
end



