Rails.application.routes.draw do
  resources :recipes
  resources :recipe_steps, only: [], params: :index do
    member do
      delete '(id)' => 'recipe_steps#destroy', as: ''
    end
  end

  get 'up' => 'rails/health#show', as: :rails_health_check

  root 'recipes#index'
end
