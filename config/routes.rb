Rails.application.routes.draw do
  root "static_pages#home"
  
  get 'static_pages/home'
  get 'static_pages/contact'
  get 'static_pages/privacy'
  get 'static_pages/adventure'

  get '/home', to: 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  get '/privacy', to: 'static_pages#privacy'
  get '/adventure', to: 'static_pages#adventure'
end
