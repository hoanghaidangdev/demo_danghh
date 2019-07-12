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
end
