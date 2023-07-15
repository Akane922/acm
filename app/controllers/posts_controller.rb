class PostsController < ApplicationController
  before_action :require_login, except: [:index, :show]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_veterinarian!, only: [:new, :create, :edit, :update, :destroy]

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.page(params[:page]).per(7).reverse_order
  end

  def update
    redirect_to root_path, alert: '投稿者でなければ、更新できません。' and return unless current_user == @post.veterinarians

    if @post.update(post_params)
      redirect_to post_path(@post), flash: { success: '投稿を編集しました。' }
    else
      render :edit
    end
  end

  def destroy
    redirect_to root_path, alert: '投稿者でなければ、削除できません。' and return unless veterinarian_user == @post.veterinarian

    if @post.destroy
      redirect_to posts_path, notice: "投稿を削除しました。"
    else
      redirect_to posts_path, alert: "#{@post.errors.full_messages.first}"
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def require_login
    unless logged_in?
      redirect_to new_veterinarian_session_path, alert: "ログインしてください"
    end
  end
end
