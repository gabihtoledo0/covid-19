Rails.application.routes.draw do
  get 'informations/:id', to: 'informations#show'
  get 'corona/index'
  get 'games/new'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'corona#index'

  devise_scope :user do
    post '/checkemail', to: 'users#emailcheck'
  end
end


