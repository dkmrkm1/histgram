class PostsController < ApplicationController
  def index
    @post = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(content: params[:content])
    @post.save
    redirect_to("/")
  end
end
