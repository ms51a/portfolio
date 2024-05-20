class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
      if @post.save
        redirect_to action: :index
      else
        render :new, status: :unprocessable_entity
      end
  end
  
  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end
 
  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render :edit, status: :unprocessable_entity
    end

    def destroy
      @post = Post.find(params[:id])
      @post.destroy!
      redirect_to post_path
    end
  end

  private

  def post_params
    params.require(:post).permit(:gacha_date, :gacha_place, :body)
  end
end
