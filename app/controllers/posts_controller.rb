class PostsController < ApplicationController
  def index
    @posts = Post.includes(:user).order('created_at DESC')
  end

  def new
    @post = Post.new()
  end

  def create
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
      redirect_to root_path
    else
      render :new, status: :unprocessoble_entity
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:title, :question, :image, :category_id, :scheduled_id).merge(user_id: current_user.id)
  end

end
