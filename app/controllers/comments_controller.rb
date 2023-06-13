class CommentsController < ApplicationController
  before_action :set_event

  def create
    @comment = @event.comments.build(comment_params)
    @comment.user = current_user

    authorize @comment

    respond_to do |format|
      if @comment.save
        format.html { redirect_to event_path(@event) }
        format.json
      else
        format.html { render "events/show", status: :unprocessable_entity }
        format.json
      end
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
