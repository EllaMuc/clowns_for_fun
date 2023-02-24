class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post

  def create
    @comment = @clown.comments.create(comment_params)
    @comment.user = current_user

    if @comment.save
      flash[:notice] = "Comment has been created"
      redirect_to clown_path(@clown)
    else
      flash[:alert] = "Comment has not been created"
      redirect_to clown_path(@clown)
    end
  end

  def destroy
    @comment = @clown.comments.find(params[:id])
    @comment.destroy
    redirect_to clown_path(@clown)
  end

  private

  def set_post
    @clown = Clown.find(params[:clown_id])
  end


  def comment_params
    params.require(:comment).permit(:body)
  end
end
