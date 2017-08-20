Rails.application.routes.draw do
  resources :categories
  resources :guides
  resources :articles
  resources :blogs
  resources :posts
  resources :hotels
  resources :stories
  get 'welcome/index'
  
  root 'welcome#index'               

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
