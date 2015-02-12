Rails.application.routes.draw do
  root to: 'static_pages#root'

  resource :session, only: [:create, :destroy, :new]

  namespace :api, defaults: {format: :json} do
    resources :responses, only: [:create, :show]
    resources :meetings do
      resources :responses, only: [:index]
    end
    resources :users, only: [:create]
  end
end
