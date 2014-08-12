class CommentsController < ApplicationController
  def create
    @task = Task.find(params[:task_id])
    @comment = @task.comments.build(params.require(:comment).permit(:content))
    @comment.user = current_user

    if @comment.save
      flash[:notice] = "Your comment was added"
    else
      flash[:error] = @comment.errors.full_messages.first
    end
    redirect_to task_path(@task)
  end
end