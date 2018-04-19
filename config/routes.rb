Rails.application.routes.draw do
  resources :stories do
    resources :sentences
  end
  resources :users

  resources :sentences do
    resources :comments
  end
end
