Rails.application.routes.draw do
  resources :recipes
  resources :recipe_steps, only: [], param: :index do
    member do
      delete '(:id)' => 'recipe_steps#destroy', as: ''
      post '/' => 'recipe_steps#create'
    end
  end

  get 'up' => 'rails/health#show', as: :rails_health_check

  root 'recipes#index'
end
