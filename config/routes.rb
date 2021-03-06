Rails.application.routes.draw do
  
  post "likes/:post_id/create" => "likes#create"
  post "likes/:post_id/destroy" => "likes#destroy"
  
  get "signup" => "users#new"
  get "users/index" => "users#index"
  post "users/create" => "users#create"
  get "users/:id" => "users#show"
  get "users/:id/edit" => "users#edit"
  post "users/:id/update" => "users#update"
  get "users/:id/likes" => "users#likes"
  
  get "/" => "home#top"
  get  "about" => "home#about"
  
  get "posts/index" => "posts#index"
  
  get "posts/new" =>"posts#new"
  
  post "posts/create" =>"posts#create"
  get "posts/:id" =>"posts#show"
  
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"
  
  get "login" => "users#login_form"
  post "login" => "users#login"
  
  post "logout" => "users#logout"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
