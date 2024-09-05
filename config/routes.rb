Rails.application.routes.draw do
  get 'user/new', to: 'user#new'
  post 'user', to: 'user#create'
  get "uesr/show" ,to: "user#show"

  root 'user#show'
end
