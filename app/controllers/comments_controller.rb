class CommentsController < ApplicationController
  before_action :set_event

  def create
    @comment = @event.comments.build(comment_params)
    @comment.user = current_user

    authorize @comment

    if @comment.save
      respond_to do |format|
        format.js { render "create", locals: { comment: @comment } }
      end
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
