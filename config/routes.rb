Web::Application.routes.draw do
  resources :sign_ups

  root to: 'static_pages#home'
end
