SampleApp::Application.routes.draw do
  resources :users # allows /users/1 to work, etc
  root to: 'static_pages#home'
  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  match '/home',    to: 'static_pages#home'
  match '/signup',  to: 'users#new'

end

