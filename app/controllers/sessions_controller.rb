class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = user.name + ", you successfully signed in!"
      redirect_to '/'
    else
      flash[:notice] = "Oops, it looks like there was a problem signing in!"
      redirect_to '/sign_in'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Successfully signed out!"
    redirect_to '/sign_in'
  end

end
