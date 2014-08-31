class TagationsController < ApplicationController

  def create
    Tagation.create(tagation_params)
    redirect_to @topic
  end

  private

  def tagation_params
    params.require(:tagation).permit(:tagable_id, :tagable_type, :tag_id)
  end

end
