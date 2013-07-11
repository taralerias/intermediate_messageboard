class PostController < ApplicationController
  def index
  	@posts = Post.all
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.create(params[:post])
    flash[:notice] = "Your post was successfully created"
    redirect_to post_index_path
  	
  end

end
