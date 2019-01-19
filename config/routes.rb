Rails.application.routes.draw do
  get 'static_pages/home', :as => 'home'
  get 'static_pages/contact', :as => 'contact'
  get 'static_pages/privacy', :as => 'privacy'
  resources :users, only: [ :new, :create ]

  get '/home', to: 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  get '/privacy', to: 'static_pages#privacy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#home"
end
