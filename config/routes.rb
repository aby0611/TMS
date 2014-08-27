Rails.application.routes.draw do
  root :to => 'pages#front'

  get 'register', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  resources :users, except: :destroy
  resources :tasks, except: :destroy do
    resources :comments, only: [:create]
  end

  resources :pages, only: [:index]
end