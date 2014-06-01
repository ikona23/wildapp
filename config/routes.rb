Dream::Application.routes.draw do

  get 'static_pages/faq'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/privacy'

  resources :posts

  resources :categories



  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users


end