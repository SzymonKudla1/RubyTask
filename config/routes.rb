# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'trainees#index'

  resources :trainees, only: [:index, :new, :create, :show, :edit, :update]
end
