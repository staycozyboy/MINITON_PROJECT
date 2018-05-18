Rails.application.routes.draw do
  resources :posts do
    post "/like", to: "likes#like_toggle"
  end
  get '/blog' => 'posts#blog', as: 'posts_blog'
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
