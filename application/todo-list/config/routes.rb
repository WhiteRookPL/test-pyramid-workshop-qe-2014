TodoList::Application.routes.draw do
  root to: 'lists#index'

  get 'lists/index'
  get 'list/view/:id', to: 'list#view'
end