Rails.application.routes.draw do
  resources :users do
    resources :outfits
    resources :articles
  end
  resources :article_outfits
  post "/login", to: "sessions#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
