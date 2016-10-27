Rails.application.routes.draw do


 devise_for :users
 namespace :admin do
    resources :home, only:[:index]
    resources :careers
  end

  root 'home#index'


	
resources :associations

  get 'associations/index'

  get 'associations/new'

  get 'associations/show'

  get 'associations/edit'

  get 'bienvenida/index'

  get 'bienvenida/hola'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
