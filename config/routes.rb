Rails.application.routes.draw do
  resources :comments
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "posts#index"

  get '/trash' => 'posts#trash'

  get 'restore/:id' => 'posts#restore'

  post 'posts/:id' => 'posts#restore'
	
  post 'comments/:id' => 'comments#restore'

  delete 'hard_delete/:id' => 'posts#hard_delete'


end
