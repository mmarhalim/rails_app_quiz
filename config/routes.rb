Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post '/jobs' => 'jobs#create'
  get '/jobs/:id' => 'jobs#show'
  get '/jobs' => 'jobs#index'

end
