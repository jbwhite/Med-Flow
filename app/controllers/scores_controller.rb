class ScoresController < ApplicationController
  def new
    @user = User.find(session[:user_id])
    @score = Score.new
  end

  def create
    p params
    p "**************************"
    @user = User.find(session[:user_id])
    @score = @user.scores.create(score_params)
    if @score.save
      redirect_to :back
    else
      redirect_to :back
    end
  end

  private

  def score_params
    params.require(:score).permit(:topic_id)
  end
end
