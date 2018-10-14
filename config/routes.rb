Rails.application.routes.draw do

  devise_for :admins, controllers: {
    registrations: 'admins/registrations',
    sessions: 'admins/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'home#index'

  # this rources has a nested resource(join table) with limited routes
  resources :students do
    resources :student_cohorts, only: [:new, :create]
  end

  resources :student_cohorts, only: [:destroy]

  resources :instructors

  # this rources has a nested resource(join table) with limited routes
  resources :courses do
    resources :cohorts, only: [:new, :create]
  end

  resources :cohorts, only: [:index, :show, :destroy]
  
  # this resource for dashboard only has an index route
  resources :dashboard, only: [:index]

  
end
