Rails.application.routes.draw do
  root to: 'reads#index'
  namespace :api do
    namespace :v1 do
      resources :reader, only: [:create, :update]
    end
  end

  resources :reads, only: [:index]
end
