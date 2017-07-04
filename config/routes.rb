Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'categories#index'

  get '/all', to: redirect('/')

  get "/soups/:id/toggle_featured", to: "soups#toggle_featured", as: "toggle_featured"
  get "/secret_soups", to: "soups#secret_soups"

  resources :categories, :soups
end
