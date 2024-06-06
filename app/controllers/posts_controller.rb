class PostsController < ApplicationController
  #before_action :authenticate_user!
  #ユーザがログインしていない場合はログインページにリダイレクトさせます。
  #onlyやexceptでアクションを設定することが多いです。
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
    if user_signed_in?
      @post = Post.find(params[:id])
    else
      redirect_to new_user_session_path
    end
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
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy!
    redirect_to posts_path
  end
  

  private

  def post_params
    params.require(:post).permit(:gacha_date, :gacha_place, :body).merge(user_id: current_user.id)
  end
end
