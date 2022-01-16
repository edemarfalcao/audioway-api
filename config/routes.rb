# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :managers
  namespace :v1 do
    resources :studios
  end
end
