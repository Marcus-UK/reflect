Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :reflections do
    resources :thoughts
  end

  root 'welcome#index'
end
