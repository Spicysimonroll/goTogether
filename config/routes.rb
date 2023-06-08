Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: "pages#home"

  Rails.application.routes.draw do
    resources :events, only: [:index, :show, :create]
    get "/invitations", to: "invitations#index"
    patch '/invitations/:id/accept', to: 'invitations#accept', as: 'accept_invitation'
    patch '/invitations/:id/reject', to: 'invitations#reject', as: 'reject_invitation'

    # other routes...
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

end
