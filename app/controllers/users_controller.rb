class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) # eg "1" if "/users/1"
  end

  def new
    @user = User.new
  end

def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to my app."
      redirect_to @user # successful save.
    else
      render 'new'
    end
  end

end
