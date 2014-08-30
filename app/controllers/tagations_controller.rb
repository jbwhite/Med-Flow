class TagationsController < ApplicationController

  def create
    p params
    redirect_to 'topics#index'

  end
end
