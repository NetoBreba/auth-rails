Rails.application.routes.draw do
  resources :books
  get '/books/:id/destroy', to: 'books#destroy', as: "destroy_book"

  # get 'books/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
