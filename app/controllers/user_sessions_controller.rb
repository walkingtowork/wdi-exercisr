class UserSessionsController < ApplicationController
  skip_before_filter :require_login, :except => [:destroy]

  def new
    @user = User.new
  end

  def create
    respond_to do |format|
      if @user = login(params[:email], params[:password])
        format.html { redirect_back_or_to(:users, :notice => 'Login successful.') }
        format.js
      else
        format.html { flash.now[:alert] = "Login failed."; render :action => "new" }
        format.js
      end
    end
  end

  def destroy
    logout
    redirect_to(:users, :notice => 'Logged out!')
  end
end