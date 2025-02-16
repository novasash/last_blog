class CommentsController < ApplicationController
  before_action :set_post

  def create
    @comment = @post.comments.new(comment_params)
    @comment.session = session
    @commnet.save
    redirect_to @post
  end

  def destroy
    @commnet = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to @post
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
