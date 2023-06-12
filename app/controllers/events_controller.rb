class EventsController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :set_event, only: :show
  skip_after_action :verify_policy_scoped, only: :index

  def index
    scope = Event.all

    if params[:city].present?
      scope = scope.where(city: params[:city])
    end

    if params[:query].present?
      scope = scope.search_by_title_and_category(params[:query])
    end

    # Apply privacy filter
    @public_events = scope.where(is_private: false)

    if user_signed_in?
      event_ids = current_user.bookings.pluck(:event_id)
      @booked_events = scope.where(id: event_ids)
    else
      @booked_events = []
    end

    @cities = Event.order(:city).pluck(:city).uniq
  end





  def show
    @booking = Booking.find_by(user: current_user, event: @event)
    authorize @event
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    event_params[:is_private] == "0" ? @event.is_private == false : @event.is_private == true
    authorize @event
    if @event.save
      if event_params[:is_private] == false
        redirect_to event_path(@event)
      else
        redirect_to invitations_new_path @event
      end
    else
      render :new, status: :unprocessable_entity
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
