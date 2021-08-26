class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new
    @posts = Post.all
  end
  
  def create
  end
  
  def show
  end
  
  def edit
  end

  def updated
  end
  
  def destroy
  end
end
