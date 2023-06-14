Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: "pages#home"

  resources :events, only: [:index, :show, :new, :create] do
    resources :comments, only: [:create]
    resources :bookings, only: [:new, :create]
    collection do
      get :search_cities
    end
  end

  get "/myprofile", to: "profiles#show", as: "user_profile"
  get "/invitations", to: "invitations#index"
  get "events/:event_id/invitations/new", to: "invitations#new", as: "invitations_new"
  post "/events/:event_id/invitations/", to: "invitations#create", as: "event_invitations"
  delete "invitation/:id", to: "invitations#destroy", as: "delete_invitation"
  patch '/invitations/:id/accept', to: 'invitations#accept', as: 'accept_invitation'
  patch '/invitations/:id/reject', to: 'invitations#reject', as: 'reject_invitation'
  resources :bookings, only: [:destroy, :update]
  resources :friendships, only: [:index]
end
