Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  mount Attachinary::Engine => "/attachinary"

  post 'boats/:id/bookings', to: 'bookings#create', as: 'boat_bookings'
  get 'bookings', to: 'bookings#index'
  get 'boats/:id/bookings/confirm', to: 'bookings#confirm', as: 'boats_booking_confirm'
  get 'boats/:id', to: 'boats#show', as: 'boat'
  get 'boats', to: 'boats#results'
  get 'profile', to: 'users#profile'

  namespace :host do
    get 'bookings', to: 'bookings#index'
    get 'bookings/:id/accept', to: 'bookings#accept', as: 'booking_approve'
    get 'bookings/:id/reject', to: 'bookings#reject', as: 'booking_reject'
    get 'boats', to: 'boats#index'
    get 'boats/new', to: 'boats#new'
    post 'boats', to: 'boats#create'
  end
end
