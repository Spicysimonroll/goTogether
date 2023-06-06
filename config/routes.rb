Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  
  Rails.application.routes.draw do
    resources :events, only: [:index, :show]
    # other routes...
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
