Rails.application.routes.draw do
  root 'posts#index'

  get 'about' => 'pages#about'
  get 'one' => 'pages#one'
  get 'two' => 'pages#two'
  get 'three' => 'pages#three'

  resource :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  match '/one',      to: 'pages#new',           via: 'get'
  match '/one',      to: 'pages#create',        via: 'post'
end
