Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get '/mentionslegales', to: 'pages#mentionslegales'
  get '/etudefinancement', to: 'pages#etudefinancement'
  get '/creditimmobilier', to: 'pages#creditimmobilier'
  get '/assurancepret', to: 'pages#assurancepret'
  get '/renegociationpret', to: 'pages#renegociationpret'
  get '/formulaire', to: 'pages#formulaire'
  get '/actualites', to: 'pages#actualites'
  resources :users, only: [:index, :show]
end
