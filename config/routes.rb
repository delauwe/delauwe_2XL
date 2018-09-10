Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  scope '(:locale)', locale: /fr/ do
    root to: 'pages#home'
    resources :apartments

    get 'contact', to: 'pages#contact'
    get 'terms', to: 'pages#terms'

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
