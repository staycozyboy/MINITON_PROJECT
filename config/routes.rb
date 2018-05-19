Rails.application.routes.draw do
  get '/hashtag', to: "posts#hashtags"
  get '/hashtag/:name', to: "posts#hashtags"
  resources :posts do
    post "/like", to: "likes#like_toggle"
    
  end
  get "posts/blog/:user_id" => 'posts#blog', as: 'posts_blog'

  get "/messages/new/:user_id" => "messages#new", as:"messages_new"
  post "/messages/create" => 'messages#create', as: "messages_create"
  get "/messages/destroy/:id" => 'messages#destroy', as: "messages_destroy"
  get "/messagebox" => 'posts#messagebox'

  resources :follows, only: [:create, :destroy] 

  resources :reviews, only: [:create, :destroy]
  
  devise_for :users
  
  root 'home#index'

  

  get 'home/index' => 'home#index'
  
  get 'home/result' => 'home#result'

  get 'home/artist' => 'home#artist'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
