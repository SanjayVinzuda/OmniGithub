Rails.application.routes.draw do
  root to: 'projects#index'

  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }

  get 'project', to: 'projects#show'
end
