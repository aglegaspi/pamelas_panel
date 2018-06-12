Rails.application.routes.draw do
  devise_for :admins, controllers: {
    registrations: 'admins/registrations',
    sessions: 'admins/sessions'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'home#index'

  resources :students do
    resources :student_cohorts, only: [:new, :create]
  end
  resources :instructors
  resources :courses do
    resources :cohorts, only: [:new, :create]
  end
  
end
