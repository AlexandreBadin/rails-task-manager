Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # see all tasks
  get '/tasks', to: 'tasks#index', as: :tasks

  # create a new task
  ## afficher un formulaire de task
  get '/tasks/new', to: 'tasks#new', as: :new_task
  ## enregister en db
  post '/tasks', to: 'tasks#create'

  # destroy a task
  delete '/tasks/:id', to: 'tasks#destroy'

  # see details about one task
  get '/tasks/:id', to: 'tasks#show', as: :task

  # update a task
  ## afficher un formulaire avec la task existante
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  #sauvegarder les changements
  patch '/tasks/:id', to: 'tasks#update'


end
