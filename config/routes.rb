Rails.application.routes.draw do
   root to: "public#homepage"

   # pages
  get '/help', to: 'public#help'
  get '/about', to: 'public#about'
  get '/contact', to: 'public#contact'

  # sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # users
   resources :users
   resources :posts do
  resources :comments
 end
end
