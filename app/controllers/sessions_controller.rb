class SessionsController < ApplicationController
  layout "welcome"

  def method_name
  end

  def login
  end

  def welcome
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
    else
      redirect_to '/login', notice: "Username or password invalid"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/welcome'
  end

  skip_before_action :authorized, only: [:new, :create, :welcome]
end
