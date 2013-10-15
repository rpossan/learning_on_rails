class PanelController < ApplicationController
  def index
  end
  
  def posts_store
    posts = Post.order("id Desc")
    render :json => posts 
  end
  
end
