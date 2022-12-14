Rails.application.routes.draw do
  resources :events
  root to: 'welcome#index'
  get 'auth/:provider/callback', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
