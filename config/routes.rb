Rails.application.routes.draw do
  root to: "stories#index"
  resources :stories do
    resources :sentences
  end
  resources :users

  resources :sentences do
    resources :comments
  end
end
