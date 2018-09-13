Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  scope '(:locale)', locale: /fr/ do
    root to: 'pages#home'
    resources :apartments

    get 'contact', to: 'pages#contact'
    get 'terms', to: 'pages#terms'
    get 'flatshares', to: 'pages#flatshares'
    get 'apparts', to: 'pages#apparts'

  match "/404", to: "errors#not_found", via: :all
  match "/422", to: "errors#unacceptable", via: :all
  match "/500", to: "errors#internal_server_error", via: :all

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
