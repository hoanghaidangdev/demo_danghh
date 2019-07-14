Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "registrations"}
  namespace :teachers do
    resources :questions
    resources :exams do
      collection do
        get :search
      end
    end
    resources :subjects, only: :show
  end

  namespace :students do
    resources :exams, only: [:index, :new, :create]
    resources :confirmations, only: [:new, :create]
    resources :log_exams, only: [:index, :show]
  end
end
