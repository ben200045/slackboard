Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :channels, only: [:new, :create, :show, :index]

  mount ActionCable.server => '/cable'

  root to: 'view#landing'
end
