Rails.application.routes.draw do
  resources :pages, only: [:index, :show]
  devise_for :users
  root to: "pages#index"
  namespace :admin do
    resources :pages
  end
end
