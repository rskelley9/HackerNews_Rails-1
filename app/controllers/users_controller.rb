class UsersController < ApplicationController

  def new

  end

  def create
    @user = User.create(params[:user])

    if @user.valid?
      redirect_to welcome_index_path
    # session[:user_id] = @user.id
    # redirect_to posts_path
  else
    @error = "You can't leave the email or password form fields blank. Please submit your registration again."
    render 'login'
  end
end
end
