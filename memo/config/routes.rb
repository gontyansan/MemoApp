Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'memomemos#index'
  # post 'memomemos',     to: 'memomemos#create'
  # get 'memomemos',      to: 'memomemos#index'
  # get 'memomemos/:id',  to: 'memomemos#show', as: "memomemo"
  # get 'memomemo/new',   to: 'memomemos#new'
  # get 'memomemos/:id/edit', to: 'memomemos#edit', as: "memomemo_edit"
  # patch 'memomemos/:id', to: 'memomemos#update'
  # delete 'memomemos/:id/', to: 'memomemos#destroy', as: "memomemo_destroy"
  resources :memomemos
end
