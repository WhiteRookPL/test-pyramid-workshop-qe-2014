TodoList::Application.routes.draw do
  root to: 'lists#index'

  get 'lists/index'
  get 'lists/:id', to: 'list#view'

  delete 'lists/:id', to: 'lists#delete_list'
  put 'lists/new/:name', to: 'lists#new_list'

  delete 'lists/:id/tasks/:taskId', to: 'list#delete_task'
  put 'lists/:id/tasks/new/:title', to: 'list#new_task'

  post 'lists/:id/tasks/:taskId/toggle', to: "list#toggle_task"
  post 'lists/:id/reopen', to: "list#reopen_list"

  get 'users/login'
  get 'users/logout'

  post 'users/authenticate'
end