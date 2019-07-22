Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "registrations"}
  namespace :teachers do
    resources :questions
    resources :log_exams, only: [:update, :destroy]
    resources :exams do
      collection do
        get :search
      end
    end
    resources :subjects, only: :show
  end

  namespace :students do
    resources :exams, only: :index
    resources :log_exams, except: [:new, :destroy]
  end
end
