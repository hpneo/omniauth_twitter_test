Rails.application.routes.draw do
  get 'static_pages/user_info'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: 'sessions#failure'
  
  root 'static_pages#home'
end
