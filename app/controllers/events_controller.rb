class EventsController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :set_event, only: :show
  skip_after_action :verify_policy_scoped, only: :index


  def index

    @public_events = Event.where(is_private: false)

    if params[:query].present?
      # Public events and friends' events that match the query
      @public_events = Event.search_by_title_and_category(params[:query])
                            .where(is_private: false)
    end

    # if user_signed_in?
    #   # Get all friend_ids for the current user from the friendships table
    #   friend_ids = current_user.friendships.pluck(:friend_id)
    #   # Get all user_ids where the current user is the friend
    #   user_ids_as_friend = Friendship.where(friend_id: current_user.id).pluck(:user_id)
    #   # Combine these two to get a full list of friends
    #   all_friend_ids = friend_ids + user_ids_as_friend

    #   if params[:query].present?
    #     # Public events and friends' events that match the query
    #     @events = Event.search_by_title_and_category(params[:query])
    #                   .where("is_private = ? OR user_id IN (?)", false, all_friend_ids)
    #   else
    #     # Public events and friends' events
    #     @events = Event.where("is_private = ? OR user_id IN (?)", false, all_friend_ids)
    #   end
    # else
    #   # For non-authenticated users, show only public events
    #   if params[:query].present?
    #     @events = Event.search_by_title_and_category(params[:query]).where(is_private: false)
    #   else
    #     @events = Event.where(is_private: false)
    #   end
    # end
  end

  def show
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
