class TagationsController < ApplicationController

  def create
<<<<<<< HEAD

  end
=======
    Tagation.create(tagation_params)
    redirect_to @topic
  end

  private

  def tagation_params
    params.require(:tagation).permit(:tagable_id, :tagable_type, :tag_id)
  end

>>>>>>> ba8b2138530700b9326016b4f4b468e8ebd53c44
end
