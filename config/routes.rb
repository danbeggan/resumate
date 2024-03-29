Rails.application.routes.draw do
  resources :resumes, only: [:show] do
    resources :employments
  end
  resources :build_resume, only: [:show, :update], controller: 'resume_steps'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  get "predictions/summary", to: "predictions#summary"
end
