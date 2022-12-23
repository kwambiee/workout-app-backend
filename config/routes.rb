Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #Put the Devise routes under a scoped named api
  scope :api, defaults: { format: :json } do
    devise_for :users
  end
end
