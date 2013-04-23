class UsersController < ApplicationController
  before_filter :check_if_logged_in, :except => [:new, :create]
  before_filter :check_if_admin, :except => [:edit, :update, :create, :new]

  def index
    @users = User.order(:name)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      mixtape = Mixtape.create(:name => "#{@user.name}'s Library")
      @user.mixtapes << mixtape
      redirect_to(root_path)
    else
      render :new
    end
  end

  def edit
    @user = @current_user
    render :new
  end

  def update
    @user = @current_user
    if @user.update_attributes(params[:user])
      redirect_to(root_path)
    else
      render :new
    end
  end

  def destroy
    user = User.find(params[:id])
    user.delete
    redirect_to(users_path)
  end


end
