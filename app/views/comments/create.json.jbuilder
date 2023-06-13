if @comment.persisted?
  json.form render(partial: "comments/form", formats: :html, locals: { event: @event, comment: Comment.new })
  json.inserted_item render(partial: "events/comment", formats: :html, locals: { comment: @comment })
else
  json.form render(partial: "comments/form", formats: :html, locals: { event: @event, comment: @comment })
end
