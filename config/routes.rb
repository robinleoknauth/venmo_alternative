Rails.application.routes.draw do

  root "static_pages#welcome"

  get  '/about',   to: 'static_pages#about',   as: :about
  get  '/contact', to: 'static_pages#contact', as: :contact
  get  '/welcome', to: 'static_pages#welcome', as: :welcome
  
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  
  resources :groups do
    resources :payments
  end
  
  resources :users do
    resources :payments
  end

end
