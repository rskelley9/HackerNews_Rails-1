class UserSessionsController < ApplicationController

  #login
  def create
    @user = User.find_by_email(params[:user][:email])

    if @user
      session[:user_id] = @user.id
      redirect_to posts_path
      # @user = User.authenticate(params[:user][:password])
    else
      @error = "Your password or username is invalid, please sign up if you don't have an account."
      render 'index'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to welcome_index
  end
end
