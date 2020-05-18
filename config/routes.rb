Rails.application.routes.draw do

  get 'users/team'
  get 'users/profile'
  resources :bugs
  resources :notes
  resources :todos
  resources :works
  resources :issues do
    resources :comments
  end
  
  resources :tasks
  resources :projects
  devise_for :users, :controllers => {:registrations => "registrations"}

  root 'dashboard#index'

  get 'team', to: 'users#team', as: :team
  get 'profile/:id', to: 'users#profile', as: :profile

  devise_scope :user do
    get '/users', to: 'devise/registrations#new'
    get '/users/password', to: 'devise/passwords#new'
  end

end
