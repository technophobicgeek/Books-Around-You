Booksaroundyou::Application.routes.draw do

  devise_for :users

  get "copies/new"

  get "books/new"

  get "users/new"

  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'

  # Use rails special syntax for root route
  root :to => 'pages#home'
 
end
