Rails.application.routes.draw do
  get 'users/:id/profile', to: 'users#profile', as: 'profile'
  devise_for :users
  root "articles#index"

  resources :articles do
    resources :comments
  end
end
