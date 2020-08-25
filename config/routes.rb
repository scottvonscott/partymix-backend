Rails.application.routes.draw do
  resources :drinks
  resources :snacks
  resources :main_courses
  resources :plans
  resources :parties
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
