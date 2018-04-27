Rails.application.routes.draw do
  devise_for :users
  root to: "stories#index"
  resources :stories do
    resources :sentences
  end
  resources :users

  resources :sentences do
    resources :comments
  end
end
