Rails.application.routes.draw do
  get 'blog/index'

  get 'blog_controller/index'

  get 'home/index'
  get 'blog/:year/:month/:slug' => 'blog#show'

  root 'blog#index'

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
