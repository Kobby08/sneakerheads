Rails.application.routes.draw do
  root to: 'pages#store'
  resources :sneakers
end
