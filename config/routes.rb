Rails.application.routes.draw do
  resources :events, only: %i[new create show]
  devise_for :users 
  root "events#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
