Rails.application.routes.draw do

  resources :genres
  resources :books
  resources :authors
  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end

  get 'about', to: 'pages#about'
  get 'info/contact', to: 'pages#contact', as: 'contact'

  resources :categories
  resources :guides
  resources :articles
  resources :blogs
  resources :posts
  resources :hotels
  resources :stories
  resources :items

  get 'posts/*missing', to: 'posts#missing'

  get 'query/:something', to: 'pages#another'

  root to: 'books#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
