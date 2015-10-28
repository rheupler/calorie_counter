Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :food
    resources :exercise
  end

  root 'tracker#index'
end
