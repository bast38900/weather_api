Rails.application.routes.draw do
  # API version 1 for "view actions"
  namespace :api do
    namespace :v1 do
      resources :weather_reports, only: %i[index show]
      resources :locations, only: %i[index show]
      resources :weather_conditions, only: %i[index show]
    end
  end

  # API version 2 for "create" actions
  namespace :api do
    namespace :v2 do
      resources :weather_reports, only: %i[create]
      resources :locations, only: %i[create]
      resources :weather_conditions, only: %i[create]
    end
  end
end
