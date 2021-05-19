Rails.application.routes.draw do
  resources :ticket_statuses
  resources :ticket_comments
  resources :tickets
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
