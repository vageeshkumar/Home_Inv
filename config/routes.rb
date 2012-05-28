HomeInv::Application.routes.draw do
  
  root :to => 'categories#index' 
  get '/categories' => 'categories#index', :as => :categories  
  get '/categories/new' => 'categories#new', :as => :categories_new
  post '/categories' => 'categories#create', :as => :categories_create
  get '/categories/:id' => 'categories#show', :as => :categories_individual
  delete '/categories/:id' => 'categories#destroy', :as => :categories_delete
  get '/categories/:id/edit' => 'categories#edit', :as => :categories_edit

end
