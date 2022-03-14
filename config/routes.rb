Rails.application.routes.draw do
  get 'sessions/new'
  resources :contacts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
 
    root 'static_pages#index' #<-  "name_controler#name_action" 
    get 'sobre', to: 'static_pages#about'
    get 'contato',to: 'static_pages#contact'
    get 'entrar', to: 'sessions#new'
    post 'entrar', to: 'sessions#create'
    get 'sair', to: 'sessions#destroy'

    resources :contacts
    resources :users, only: [:new,:create,:show]
end
