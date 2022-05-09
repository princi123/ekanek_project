Rails.application.routes.draw do
  resources :documents, only: [:index, :new, :create, :destroy]   
  devise_for :users
  root to: "documents#index"
end
