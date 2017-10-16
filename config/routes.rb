Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    get '/shipments/:id/nearby_truckers', to: 'shipments#nearby_truckers'
    resources :shipments
    resources :contacts
    resources :truckers
    resources :vehicles
    resources :destinations
    resources :origins
  end
end
