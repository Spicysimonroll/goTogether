class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :authenticate_user!

  def index
    if params[:query].present?
      @events = Event.search_by_title_and_category(params[:query])
    else
    @events = Event.where(is_private: false)
    end
  end

end
