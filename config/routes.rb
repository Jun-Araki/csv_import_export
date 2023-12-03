Rails.application.routes.draw do
  get 'import/create'
  resources :users, only: :index do
    collection { resources :import, only: :create, controller: :import }
  end
end
