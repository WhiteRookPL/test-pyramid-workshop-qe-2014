class ListsController < ApplicationController
  def checkAuthentication
    if !cookies[:SESSION]
      redirect_to '/users/login'
      return false
    end

    return true
  end

  def current_user
    cookies[:SESSION].split(':')[0]
  end

  def index
    if checkAuthentication()
      @lists = List.all.select { |list| list.available && list.user.username == current_user }
      @current_user = current_user
    end
  end

  def new_list
    if checkAuthentication()
    end
  end

  def delete_list
    if checkAuthentication()
    end
  end
end