class PostsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
  end

  def show
    @post = post.find(params[:id])
  end

  def edit
    @post = post.find(params[:id])
  end

  def update
    @post = post.find(params[:id]) 
    post = post.find(params[:id])
    post.update(post_params)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end



  private
  
  def post_params
    params.require(:post).permit(:restaurant_name, :area, :genre, :url, :notes).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end


end
