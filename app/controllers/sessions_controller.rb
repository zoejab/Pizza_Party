class SessionsController < ApplicationController

skip_before_action :authenticate, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
      if user && user.authenticate(params[:session][:password])
        log_in user
        redirect_to root_path
      else
        flash.now[:danger] = "Invalid email/password combination"
        render 'new'
      end
  end

  def destroy
    log_out
    redirect_to root_path
  end

end
