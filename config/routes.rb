Rails.application.routes.draw do

  root "static_pages#welcome"

  get  '/about',   to: 'static_pages#about',   as: :about
  get  '/contact', to: 'static_pages#contact', as: :contact
  get  '/welcome', to: 'static_pages#welcome', as: :welcome
  get  '/signup',  to: 'users#new',            as: :signup
  get  '/login',  to: 'static_pages#login',    as: :login
  
  get '/auth/:provider/callback', to: 'sessions#create'
  
  resources :groups do
    resources :payments
  end
  
  resources :users do
    resources :payments
  end

end
