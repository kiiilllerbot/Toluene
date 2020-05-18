Rails.application.routes.draw do

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

  devise_scope :user do
    get '/users', to: 'devise/registrations#new'
    get '/users/password', to: 'devise/passwords#new'
  end

end
