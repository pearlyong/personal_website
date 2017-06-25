Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/contact'

  get 'welcome/index'

  resources :articles

  root 'welcome#index'
end
