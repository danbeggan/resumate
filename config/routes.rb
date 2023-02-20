Rails.application.routes.draw do
  resources :resumes
  resources :build_resume, only: [:show, :update], controller: 'resume_steps'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  
end
