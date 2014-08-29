class UsersController < ApplicationController

  def show

  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to topics_path
    else
      # flash[:error] = "Sign Up Failed. Do Better"
      render 'new'
    end

  end

  def new
    @user = User.new
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
