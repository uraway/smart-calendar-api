Rails.application.routes.draw do
  resources :acceptance_records, only: [:create, :index]
end
