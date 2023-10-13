Rails.application.routes.draw do
  resources :contacts, only: %i[new create]
  get 'pages/home'
  get 'pages/about'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#home'
  get 'sobre', to: 'pages#about'
  get 'contacto', to: 'contacts#new'

end
