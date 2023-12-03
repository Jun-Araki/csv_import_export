Rails.application.routes.draw do
  resources :users, only: :index do
    collection { resources :import, only: :create, controller: :import }
  end
end
