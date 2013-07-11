class PostController < ApplicationController
  def index
  	@posts = Post.all
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(params[:post])
    @post.user = current_user

      if @post.save
        flash[:notice] = "Your post was successfully created"
        redirect_to post_index_path
      else
        flash[:notice] = "Your post was not created, you were missing fields."
        render :action => 'new'
        

      end
        
  	
  end

end
