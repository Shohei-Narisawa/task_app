class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post_count = Post.all.count
  end
  
  def new
    @posts = Post.all
    
  end
  
  def create
    @post = Post.new(title: params[:title], start_at: params[:start_at], end_at: params[:end_at], all_day: params[:all_day], memo: params[:end])
    if @post.save
      flash[:notice] = "スケジュールを登録しました"
      redirect_to :posts
    else
      render "new"
    end
  end
  
  def show
    @post = Post.find_by(id: params[:id])
  end
  
  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    if @post.update(title: params[:title], start_at: params[:start_at], end_at: params[:end_at], all_day: params[:all_day], memo: params[:end])
      flash[:notice] = "スケジュールを更新しました"
      redirect_to :posts
    else
      render "edit"
    end
  end
  
  def destroy
  end
end
