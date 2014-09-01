class UsersController < ApplicationController
  include UserHelper

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url
    else
      # flash[:error] = "Sign Up Failed. Do Better"
      render 'new'
    end
  end

  def show
      @user = User.find_by_id(session[:user_id])
      @comments = Comment.where(:user_id == session[:user_id])
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
