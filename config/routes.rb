Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :shipments
    resources :contacts
    resources :truckers
    resources :vehicles
    resources :destinations
    resources :origins
  end
end
