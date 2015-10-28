Rails.application.routes.draw do
  devise_for :users

  resources :trackers do
    resources :foods
    resources :exercises
  end

  root 'trackers#index'
end
