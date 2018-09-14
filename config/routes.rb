Rails.application.routes.draw do
  get 'sitemaps/index'
  get 'sitemaps/init_sitemap'
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
    get '/sitemap.xml' => 'sitemaps#index', defaults: { format: 'xml' }
    get "/robots.txt", to: "pages#robots"


    # not to duplicate content
    constraints(host: /^(?!www\.)/i) do
      match '(*any)' => redirect { |params, request|
        URI.parse(request.url).tap { |uri| uri.host = "www.#{uri.host}" }.to_s
      }, :via => [:get, :post]
    end


  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
