Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :books
  get '/books/:id/destroy', to: 'books#destroy', as: "destroy_book"

  root :to => 'books#index'
  # get 'books/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
