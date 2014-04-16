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
      @lists = List.all.select { |list| list.user.username == current_user }
      @current_user = current_user
    end
  end

  def new_list
    if checkAuthentication()
      if List.find_by name: params[:name]
        head :conflict
        return
      end
      list = List.create(:name => params[:name])

      list.user_id = User.where(:username => current_user).first.id
      list.save!
    end

    head :ok
  end

  def delete_list
    if checkAuthentication()
      list = List.where(:id => params[:id]).first

      if list.user.username != current_user
        redirect_to '/'
        return
      end

      list.destroy
    end

    head :ok
  end
end