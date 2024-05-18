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

  private

  def post_params
    params.require(:post).permit(:gacha_date, :gacha_place, :body)
  end
end

#メソッドの特徴として、メソッドの内で定義した変数はメソッドの外では利用できませんでしたが、
#インスタンス変数はインスタンス内であればどこでも呼び出すことが出来ます。
#インスタンス変数は、インスタンスごとに値を保持することが出来ます。


