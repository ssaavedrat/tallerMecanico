Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' },
                      path: '',
                      path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  

  resources :contacts, only: %i[new create]
  get 'pages/home'
  get 'pages/about'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'contacts#new'

end
