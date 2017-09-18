Rails.application.routes.draw do

  get 'posts/:id', to: 'public_posts#show', as: 'posts_show'

  resources :ads

  resources :categories

  resources :posts

  resources :comments

  post 'create_comment', to: 'public_posts#create_comment', as: 'create_comment'

  root 'public_posts#index'

  get 'categories/:id', to: 'public_posts#posts_category', as: 'posts_category'

#  get 'posts/:id', to: 'public_posts#show', as: 'posts_show'

  devise_for :users

  resources :meets
  get 'meeting', to: 'public_meets#new', as: 'meeting'
  post 'create_meet', to: 'public_meets#create_meet', as: 'create_meet'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
