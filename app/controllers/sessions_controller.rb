class SessionsController < ApplicationController
  def new
    
  end

  def create
    @user = User.find_by(login_id: params[:login_id])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:notice] = "You're login"
      redirect_to root_path
    else
      flash[:error] = "There's something wrong with your username and password"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:error] = "You're logout"
    redirect_to root_path
  end
end