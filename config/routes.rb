Rails.application.routes.draw do
  get '/hashtag', to: "posts#hashtags"
  get '/hashtag/:name', to: "posts#hashtags"
  resources :posts do
    post "/like", to: "likes#like_toggle"
    
  end
  get "posts/blog/:user_id" => 'posts#blog', as: 'posts_blog'

  resources :follows, only: [:create, :destroy] 

  resources :reviews, only: [:create, :destroy]
  
  devise_for :users
  
  root 'home#index'

  

  get 'home/index' => 'home#index'
  
  get 'home/result' => 'home#result'

  get 'home/artist' => 'home#artist'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
