Rails.application.routes.draw do
  root to: 'welcome#index'
  get 'auth/:provider/callback', to: 'sessions#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end