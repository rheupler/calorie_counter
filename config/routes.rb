Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :foods
    resources :exercises
  end

  root 'users#index'
end
