TodoList::Application.routes.draw do
  root to: 'lists#index'

  get 'lists/index'
  get 'list/view/:id', to: 'list#view'

  get 'users/login'
  get 'users/logout'

  post 'users/authenticate'
end