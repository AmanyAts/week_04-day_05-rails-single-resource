Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'

  
  # get "/authors", to:"authors#index", as:"authors"
  # get '/authors/new',to: 'authors#new', as:"new_author"
  # get '/authors/:id/edit',to: 'authors#edit', as:"edit_author" 
  # get "/authors/:id", to:"authors#show", as:"author"
  # delete "/authors/:id" , to: "authors#destroy" #
  # post "/authors", to: "authors#create"
  # patch '/authors/:id' ,to:"authors#update"
  
  #books table
  resources :authors do 
    resources :books
end
  # get "/books", to:"books#index" , as: "books" #this a shorcut
  # get '/books/new',to: 'books#new', as:"new_book" #==/books/new
  # get '/books/:id/edit',to: 'books#edit', as:"edit_book" 
  # get "/books/:id", to:"books#show" , as: "book" #book_path(book)
  # delete "/books/:id" , to: "books#destroy" #
  # post "/books", to: "books#create"
  # patch '/books/:id' ,to:"books#update"

  #Patients
  # get "/patients", to:"patients#index" , as:"patients"
  # get "/patients/new", to:"patients#new", as:"new_patient"
  # get '/patients/:id/edit',to: 'patients#edit', as:"edit_patient" 
  # get "/patients/:id", to:"patients#show", as:"patient"
  # delete "/patients/:id" , to: "patients#destroy" #
  # post "/patients", to: "patients#create"
  # patch '/patients/:id' ,to:"patients#update"
  resources :doctors do
  resources :patients
  end
end
