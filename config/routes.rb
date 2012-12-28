SampleApp::Application.routes.draw do
  resources :users do # allows /users/1 to work, etc
    member { get :following, :followers } # /users/1/{following,followers}
  end

  resources :sessions, only: [:new, :create, :destroy]
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]

  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  root to: 'static_pages#home'  # "/"
  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  match '/home',    to: 'static_pages#home'
end

