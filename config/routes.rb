Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #we want our routes to start with /api
  scope :api, defaults: { format: :json } do
    devise_for :users
  end
end
