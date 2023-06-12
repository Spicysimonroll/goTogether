class CommentsController < ApplicationController
  before_action :set_event

  def create
    @comment = @event.comments.build(comment_params)
    @comment.user = current_user

    authorize @comment

    if @comment.save
      redirect_to event_path(@event, anchor: "comments")
    else
      # Handle comment creation failure
    end
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
