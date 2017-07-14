class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      flash[:notice] = user.name + ", you successfully signed up!"
      redirect_to '/'
    else
      flash[:alert] = 'Something went wrong. Passwords must be 6-20 characters, contain: at least one lowercase letter, at least one uppercase letter, and at least one numeric digit. Emails must be valid.'
      redirect_to '/sign_up'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
