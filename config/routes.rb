Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  mount Attachinary::Engine => "/attachinary"

  post 'boats/:id/bookings', to: 'bookings#create'
  get 'bookings', to: 'bookings#index'
  get 'boats/:id/bookings/confirm', to: 'bookings#confirm'
  get 'boats/:id', to: 'boats#show'
  get 'boats', to: 'boats#results'
  get 'profile', to: 'users#profile'

  namespace :host do
    get 'bookings', to: 'bookings#index'
    post 'bookings/:id/accept', to: 'bookings#accept'
    post 'bookings/:id/reject', to: 'bookings#reject'
    get 'boats', to: 'boats#index'
    get 'boats/new', to: 'boats#new'
    post 'boats', to: 'boats#create'
  end
end
