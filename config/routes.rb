Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :storages, only: [:index, :show, :create, :update, :destroy]
      resources :commodities, only: [:index, :show, :create, :update, :destroy]
      get '/v1/storages/show', to: 'v1/storages#show'
      get '/v1/commodities/show', to: 'v1/commodities#show'
      get '/commodities', to: 'commodities#index', format: :json
      get '/storages', to: 'storages#index', format: :json
    end
  end
end
