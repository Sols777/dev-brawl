Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "test", to: "pages#test"
  get "mydashboard", to: "pages#mydashboard"
  get "profile", to: "pages#profile"
  get 'expected_result/:id', to: 'submissions#expected_result', as: 'expected_result'

  resources :languages, only: [] do
    resources :submissions, only: %i[new create]
  end
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
