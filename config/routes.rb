Rails.application.routes.draw do
  get '/' => "home#index"
  get '/post/new' => "home#post_form"
  post '/post/new' => "home#create_post"

  get '/posts' => "home#read_all_post"
  get '/post/:post_id' => "home#read_post"

  get '/post/delete/:post_id' => 'home#delete_post'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "home#index"
end
