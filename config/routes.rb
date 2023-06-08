Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: "pages#home"

  Rails.application.routes.draw do
    resources :events, only: [:index, :show, :create]
    # other routes...
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

end
