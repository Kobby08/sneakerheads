Rails.application.routes.draw do
  devise_for :users, path: ''
  root to: 'pages#store'
  resources :sneakers
end
