Rails.application.routes.draw do

  root 'static#home'

  resources :books do
    resources :entries
  end

  resources :entries
  devise_for :users

end
