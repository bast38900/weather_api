Rails.application.routes.draw do
  resources :weather_reports, only: %i[index show create]
  resources :locations, only: %i[index show create]
  resources :weather_conditions, only: %i[index show create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
