Rails.application.routes.draw do
  get 'welcome/index'
  get  '/about', to: 'static_pages#about'
  
  resources :articles
  resources :static_pages
  
  get 'contact', to: 'messages#new', as: 'contact'
  post 'contact', to: 'messages#create'

  root 'welcome#index'
end