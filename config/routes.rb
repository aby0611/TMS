Rails.application.routes.draw do
  root :to => 'pages#front'

  get 'register', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :tasks, only: [:new, :create, :show, :edit, :update] do
    resources :comments, only: [:create]
  end

  get 'assigned_tasks', to: 'pages#assigned_tasks'
  get 'tasks_in_progress', to: 'pages#tasks_in_progress'
end