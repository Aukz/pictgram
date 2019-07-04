class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    # topic = Topic.find(params[:comment][:topic_id])
    @comment =current_user.comments.build(coment_params)
    # @comment.topic_id = topic.id
    @comment.save
    redirect_to topics_path
  end

  def destroy
  end

  private
  def coment_params
    params.require(:comment).permit(:body, :topic_id)
  end
end
