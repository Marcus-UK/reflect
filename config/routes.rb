Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  
  resources :reflections do
    resources :thoughts
  end

  root 'welcome#index'
end
