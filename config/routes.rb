Rails.application.routes.draw do
  resources :info, only: [ :index, :update ] 
  resources :social, only: [ :index, :update, :create ]
  resources :skill, only: [ :index, :update, :create ]
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
