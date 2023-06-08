Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: "pages#home"

  resources :events, only: [:index, :show]
  get "/myprofile", to: "profiles#show", as: "user_profile"
end
