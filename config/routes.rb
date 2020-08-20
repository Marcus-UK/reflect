Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :reflections

  root 'welcome#index'
end
