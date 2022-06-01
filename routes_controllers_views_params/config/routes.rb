Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'main#home'
  get '/answer' => 'main#answer'
  get '/question' => 'main#question'
  get '/greeting/:name' => 'main#greeting'
end
