Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {registrations: "registrations"}
  namespace :teachers do
    resources :questions
    resources :log_exams, only: [:index, :show, :update, :destroy]
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

  root "application#index"
end
