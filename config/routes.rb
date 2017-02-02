Rails.application.routes.draw do

  root 'static#home'

  resources :books do
    resources :entries, controller: 'books/entries'
  end

  devise_for :users

end
