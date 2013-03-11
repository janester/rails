class UsersController < ApplicationController
  def index
    @users = User.order(:email)
    @users.each do |user|
      user.stock_balance = 0
      user.stocks.each do |stock|
        user.stock_balance += stock.get_quote * stock.quantity
      end
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    @users = User.order(:email)
    respond_to do |format|
      format.html {redirect_to(users_path)}
      format.js
    end
  end
end
