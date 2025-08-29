# config/routes.rb

Rails.application.routes.draw do
  resources :authors
    resources :books
    end