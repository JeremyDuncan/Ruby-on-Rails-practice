Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'main#home'
  get '/answer/:number' => 'main#answer'
  get '/question' => 'main#question'
  get '/greeting/:name' => 'main#greeting'
  get '/jeremyduncan' => 'main#jeremyduncan'
  get '/cubed/:num' => 'main#cubed'
  get '/evenly/:num1+:num2' => 'main#evenly'
  get '/palindrome/:string' => 'main#palindrome'
end
