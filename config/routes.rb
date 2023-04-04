# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :commodities
  resources :storages
  root 'welcome#index'
  get 'welcome', to: 'welcome#index'
end
