Rails.application.routes.draw do
  root to:'homes#top'
  get 'home/about'=>'homes#about'
  
  devise_for :users
  
  resources :users,only: [:show,:index,:edit,:update]
  patch 'users/:id'=>'users#edit',as:'update_user'
  patch 'books/:id'=>'books#update',as: 'update_book'
  resources :books,only: [:new,:create,:index,:show,:edit,:update,:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
