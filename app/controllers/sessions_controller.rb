class SessionsController < ApplicationController
  def new
  end

  def create
    name = params[:name]
    if name.nil? || name.length == 0
      redirect_to login_path and return
    end
    session[:name] = name
    redirect_to root_path
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end
end
