class CommentScoresController < ApplicationController
  def new
    @user = User.find(session[:user_id])
    @comment_score = CommentScore.new
  end

  def create
    @user = User.find(session[:user_id])
    votes = @user.comment_scores.map {|score| score.comment.id }
    comment = comment_score_params[:comment_id]
    unless votes.include?(comment.to_i)
      @comment_score = @user.comment_scores.create(comment_score_params)
      if @comment_score.save
        redirect_to root_path
      else
        redirect_to root_path
      end
    else
      redirect_to root_path
    end
  end

  private

  def comment_score_params
    params.require(:comment_score).permit(:comment_id)
  end
end
