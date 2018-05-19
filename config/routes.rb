Rails.application.routes.draw do

  resources :posts do
    post "/like", to: "likes#like_toggle"
  end
  get "posts/blog/:user_id" => 'posts#blog', as: 'posts_blog'

  resources :follows, only: [:create, :destroy] 

  resources :reviews, only: [:create, :destroy]
  
  devise_for :users
  root 'home#index'
  get 'home/result' => 'home#result'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
