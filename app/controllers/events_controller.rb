class EventsController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :set_event, only: :show
  skip_after_action :verify_policy_scoped, only: :index


  def index
    if params[:query].present?
      @public_events = Event.search_by_title_and_category(params[:query])
                            .where(is_private: false)
      if user_signed_in?
        event_ids = current_user.bookings.pluck(:event_id)
        @booked_events = Event.search_by_title_and_category(params[:query])
                              .where(id: event_ids)
      else
        @booked_events = []
      end
    else
      @public_events = Event.where(is_private: false)
      if user_signed_in?
        @booked_events = current_user.bookings.includes(:event).map(&:event)
      else
        @booked_events = []
      end
    end
  end

  def show
    authorize @event
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    authorize @event
    @event.user = current_user
    if @event.save
      redirect_to event_path(@event), notice: 'Event was successfully created.'
    else
      render :new
    end
  end

  private
  def event_params
    params.require(:event).permit(:title, :address, :start_date, :end_date, :description, :category, :is_private)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
