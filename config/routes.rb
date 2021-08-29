Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
    get '/home/about' => 'homes#about'
    get '/users/logout' => 'devise/sessions#destroy'
    resources :users,only: [:show,:index,:edit,:update, :destroy,:index]
    resources :books, only: [:new, :create, :index, :show, :edit, :destroy,:update]
  end