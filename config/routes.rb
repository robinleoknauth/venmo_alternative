Rails.application.routes.draw do

  root "users#index"
  resources :users do
    resources :payments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
