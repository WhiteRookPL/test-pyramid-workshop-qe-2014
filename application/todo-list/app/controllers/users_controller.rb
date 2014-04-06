class UsersController < ApplicationController
  def login
  end

  def authenticate
    user = User.where("username = ?", params[:username]).first

    if user && user.password == params[:password]
      cookies[:SESSION] = "#{params[:username]}:#{params[:password]}"
      redirect_to "/"
    else
      redirect_to "/users/login", :alert => "Invalid username or password"
    end
  end

  def logout
    cookies.delete :SESSION
    redirect_to "/", :notice => "User logged out"
  end
end