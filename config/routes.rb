Rails.application.routes.draw do
  get 'map/view'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'fundraisers#about'

  resources :fundraisers

  resource :session, only: %i(new create destroy)

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  get "/about" => "home#about", as: 'about'
  get "/map" => "map#view", as: "map"


  get '/contact' => "messages#new", as: "contact"
  post '/contact' => "messages#create", as: "messages"

end
