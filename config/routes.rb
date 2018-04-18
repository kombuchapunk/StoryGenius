Rails.application.routes.draw do
  resources :stories do
    resources :sentences
  end
end
