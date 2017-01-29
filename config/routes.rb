Rails.application.routes.draw do
  get 'home/index'
  get 'blog/:year/:month/:slug' => 'blog#show'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
