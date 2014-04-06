class ListsController < ApplicationController
  def index
    @lists = List.all.select { |list| list.available && list.user.username == current_user.username }
  end

  def new_list
  end

  def delete_list
  end
end