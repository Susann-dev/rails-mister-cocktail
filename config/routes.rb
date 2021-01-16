Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [ :new, :create ]
  end

  get "cocktails", to: "cocktails#index"
  get "cocktails/new", to: "cocktails#new"
  post "cocktails", to: "cocktails#create"
  get "cocktails/:id", to: "cocktails#show"
  get "/cocktails/:cocktail_id/doses/new", to: "doses#new"
  post "/cocktails/:cocktail_id/doses", to: "doses#create"

end

