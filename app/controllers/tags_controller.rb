class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def new
    @tag = Tag.new
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def create
    @tag = Tag.new(tag_params)
    topic = Topic.find(params[:topic_id])
    user = User.find(session[:user_id])
    p params
    p topic
    p user

# {"utf8"=>"✓", "authenticity_token"=>"kbfRwweVmhb9CipiH08vDhkle3DApC7C3iaPAKZVrGU=", "tag"=>{"subject"=>"blah balh"}, "commit"=>"Create Tag", 
# "action"=>"create", "controller"=>"tags", "topic_id"=>"1"}

    puts "***************************************"
    
    # if Tag.exists?(subject: @tag.subject)
      # Tagation.create()

    puts "***************************************"

    if @tag.save
      redirect_to @tag, notice: 'Tag was successfully created.'
    else
      render :new
    end
  end

  def update
      if @tag.update(tag_params)
        redirect_to @tag, notice: 'Tag was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @tag.destroy
    redirect_to tags_url, notice: 'Tag was successfully destroyed.'
  end

  private
    def tag_params
      params.require(:tag).permit(:subject)
    end
end
