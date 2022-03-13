Rails.application.routes.draw do
  resources :contacts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
 
    root 'static_pages#index' #<-  "name_controler#name_action" 
    get 'sobre', to: 'static_pages#about'
    get 'contato',to: 'static_pages#contact'

    resources :contacts
    resources :users, only: [:new,:create]
end
