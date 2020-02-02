Rails.application.routes.draw do
  resources :students, except: [:index, :destroy]
  resources :school_classes, except: [:index, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'students/show', to: 'students#show'
  get 'students/new', to: 'students#new'
  get 'students/edit', to: 'students#edit'
  get 'students/update', to: 'students#update'

  get 'school_classes/show', to: 'school_classes#show'
  get 'school_classes/new', to: 'school_classes#new'
  get 'school_classes/edit', to: 'school_classes#edit'
  get 'school_classes/update', to: 'school_classes#update'



end
