Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    resources :jobs
  end

  resources :jobs do
    resources :resumes
  end
  #resources :jobs
  root 'jobs#index'
  #root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
