class UsersController < ApplicationController
  # GET /users
  def index
    if params[:admin]
      @users = User.all
    else
      return redirect_to new_user_path
    end
  end

  # GET /users/1
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  def create
    @user = User.new(params[:user])    
    if @user.save
      flash[:notice] = 'User was successfully created.'
      redirect_to user_path(@user)
    else
      render :action => "new"
    end
  end

  # PUT /users/1
  def update
    @user = User.find(params[:id])
  
    if @user.update_attributes(params[:user])
      flash[:notice] = 'User was successfully updated.'
      redirect_to(@user)
    else
      render :action => "edit"
    end
  end
  
  # GET /users/1/delete
  def delete
    @user = User.find(params[:id])
  end
  
  # DELETE /users/1
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    
    redirect_to(users_url)
  end
  
  
  private
  
  
  def authenticate_user
    unless ENV['RAILS_ENV'] == 'development'
      authenticate_or_request_with_http_basic do |username, password|
        username == "admin" && password == "admin123"
      end
    end
  end
end
