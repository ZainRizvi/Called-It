Rails.application.routes.draw do
  get 'dashboard' => 'dashboard#show'
  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get 'auth/auth0/callback' => 'auth0#callback'
  get 'auth/failure' => 'auth0#failure'
  get 'logout' => 'logout#logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
