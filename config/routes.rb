Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    get '/shipments/:id/nearby_truckers', to: 'shipments#nearby_truckers'
    put '/truckers/:id/last_location', to: 'truckers#last_location'
    resources :shipments
    resources :contacts
    resources :truckers
    resources :destinations
    resources :origins
  end
end
