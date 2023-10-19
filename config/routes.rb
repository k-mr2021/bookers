Rails.application.routes.draw do
  post 'books' => 'books#create' 
  get '/books/:id' => 'books#index'
  get '/books/:id' => 'books#show'
  get 'books/edit'
  root to: 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
