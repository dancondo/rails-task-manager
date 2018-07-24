Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#tasks', as: :tasks

  get 'tasks/new', to: 'tasks#new', as: 'tasks/new'
  post 'tasks/create', to: 'tasks#create'


  delete 'tasks/:id', to: 'tasks#delete'
  get 'tasks/:id', to: 'tasks#show', as: 'tasks/id'
  get 'tasks/:id/edit', to: 'tasks#edit'
  post 'tasks/:id/change', to: 'tasks#change'
end
