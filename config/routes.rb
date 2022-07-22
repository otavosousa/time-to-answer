Rails.application.routes.draw do
  namespace :site_backoffice do
    get 'welcome/index'
  end
  namespace :admins_backoffice do
    get 'welcome/index'
  end
  namespace :users_backoffice do
    get 'welcome/index'
  end
  devise_for :admins
  devise_for :users
  # get 'welcome/index'
  # get 'inicio', to: 'welcome#index'
  root to: 'site_backoffice/welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
