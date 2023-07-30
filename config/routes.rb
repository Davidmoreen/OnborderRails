Rails.application.routes.draw do
  resources :screens
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "screens#index"
  get '/onboarding_screen', to: 'screens#onboarding_screen'
  post '/screens/:id/log_conversion', to: 'screens#log_conversion'
end
