class SessionController < ApplicationController
  def create
    user = User.where(:username => params[:username]).first
    if user.present?
      session[:user_id] = user
      user.is_online = true
      user.save
    else
      session[:user_id] = User.create(username:params[:username], is_online: true)
    end
    authenticate
  end

  def destroy
    @current_user.is_online = false
    @current_user.save
    session[:user_id] = nil
    authenticate
    redirect_to(root_path)
  end
end
