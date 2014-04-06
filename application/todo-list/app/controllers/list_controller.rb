class ListController < ApplicationController
  def view
    @list = List.where(:id => params[:id]).first

    # Not available lists aren't visible.
    if !@list.available
      redirect_to "/"
    end

    # It's not your list.
    if @list.user.username != current_user.username
      redirect_to "/"
    end
  end

  def close_task
  end

  def new_task
  end

  def delete_task
  end

  # def reopen_list
  # end
end