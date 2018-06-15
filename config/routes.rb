Rails.application.routes.draw do
  devise_for :admins, controllers: {
    registrations: 'admins/registrations',
    sessions: 'admins/sessions'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'home#index'

  # this rources has a nested resource(join table) with limited views
  resources :students do
    resources :student_cohorts, only: [:new, :create]
  end

  resources :instructors

  # this rources has a nested resource with limited views
  resources :courses do
    resources :cohorts, only: [:new, :create]
  end

  resources :cohorts, only: [:index, :destroy]
  
  # this resource is only displaying the index 
  resources :dashboard, only: [:index]
end
