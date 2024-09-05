Rails.application.routes.draw do
  get 'user/new', to: 'user#new'
  post 'user', to: 'user#create'

  get "up" => "rails/health#show", as: :rails_health_check

  root 'user#new'
end
