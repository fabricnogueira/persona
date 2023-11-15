class PostsController < ApplicationController
  before_action :set_post, only: [:show]

  def index
    @posts = Post.all
  end

  def show
    # O filtro 'before_action :set_post' já define a variável @post
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: 'Post criado com sucesso.'
    else
      render :new
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:attachment, :content, :user_id)
  end
end
