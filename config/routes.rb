Rails.application.routes.draw do
  get 'likes/create'
  get 'likes/destroy'
  root "homes#index"
  get "/" => "homes#index", as: :home
  get "homes/about" => "homes#about", as: :about_homes
  get "users/:id/mypage" => "users#mypage", as: :user_mypage
  devise_for :users
  resources :users
  resources :posts do
  	resources :post_comments, only: [:create, :destroy]
  	resource :likes, only: [:create, :destroy]
  	get :likes, on: :collection
  	get :prefectures, on: :collection
  end
  resources :prefectures, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
