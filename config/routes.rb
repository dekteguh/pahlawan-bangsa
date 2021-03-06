Rails.application.routes.draw do
  
  resources :homes, path: '/', only: [:index]

  get 'register', to: 'accounts#new'

  post 'register', to: 'accounts#create'

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

  resources :pahlawans, path: '/pahlawan'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
