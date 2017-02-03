Rails.application.routes.draw do
  devise_for :authors
  get 'blog/index'

  get 'blog_controller/index'

  get 'home/index'
  get 'blog/:year/:month/:slug' => 'blog#show'

  root 'blog#index'

  resources :authors do
    resources :posts
  end

  resources :posts do
    resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
