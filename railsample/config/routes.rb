Rails.application.routes.draw do
  get 'about', to: 'pages#about'
  get 'info/contact', to: 'pages#contact', as: 'contact'

  resources :categories
  resources :guides
  resources :articles
  resources :blogs
  resources :posts
  resources :hotels
  resources :stories

  root to: 'blogs#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
