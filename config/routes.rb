Rails.application.routes.draw do
    


    
  get 'items/index'

  get 'items/show'

  get 'items/new'

  get 'packages/index'

  get 'packages/show'

  get 'packages/new'

    get 'users/index'
    
    get 'users/show'

    get 'users/new'

    get 'home' ,to: 'static_pages#home'
    
    get 'about' ,to: 'static_pages#about'
    
    get 'signup' ,to: 'users#new'

    root 'static_pages#home'


    resources :users
    resources :packages
    resources :items

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
