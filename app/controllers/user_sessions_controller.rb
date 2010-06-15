class UserSessionsController < ApplicationController

  def create
    if user = User.authenticate(params[:user_session][:email], params[:user_session][:password])
      session[:user_id] = user.id
      redirect_to user
    else
      flash.now[:error] = "Login failed"
      render :action => :new
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
