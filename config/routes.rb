Rails.application.routes.draw do
  devise_for :students
  root to: "exams#index"
  resources :exams
end
