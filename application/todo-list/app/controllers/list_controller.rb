require_relative '../helpers/AuthenticationHelper'

class ListController < ApplicationController
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

  def view
    if checkAuthentication()
      @list = List.where(:id => params[:id]).first
      @current_user = current_user

      # Not available lists aren't visible.
      if !@list.available
        redirect_to '/'
        return
      end

      # It's not your list.
      if @list.user.username != current_user
        redirect_to '/'
        return
      end
    end
  end

  def close_task
    if checkAuthentication()
    end
  end

  def new_task
    if checkAuthentication()
    end
  end

  def delete_task
    if checkAuthentication()
    end
  end

  # def reopen_list
  #   if checkAuthentication()
  #   end
  # end
end