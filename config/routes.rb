Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "registrations"}
  namespace :teachers do
    resources :questions
    resources :exams
  end
end
