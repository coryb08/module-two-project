Rails.application.routes.draw do
  resources :users do
    resources :outfits
    resources :articles
  end
  resources :article_outfits
  post "/login", to: "sessions#create"
  get "/", to: "static#home", as: "root"
  post '/users/:id/outfits/new', to: 'outfits#create'
  post '/users/:id/articles/new', to: 'articles#create'

  get '/logout', to: "sessions#destroy"
  get '/about', to: "static#about"
  get '/contact', to: "static#contact"

end
