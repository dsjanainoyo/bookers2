Rails.application.routes.draw do
  root to:'homes#top'
  get 'home/about'=>'homes#about'
  
  devise_for :users
  
  resources :users,only: [:show,:index,:edit]
  resources :books,only: [:new,:index,:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
