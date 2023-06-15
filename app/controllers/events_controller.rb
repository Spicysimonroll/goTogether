class EventsController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :set_event, only: :show
  skip_after_action :verify_policy_scoped, only: :index

  def index
    scope = Event.all

    if params[:redirect] == "true"
      @session_redirect = session[:redirect].nil? ? session[:redirect] = "true" : session[:redirect] = nil
    end

    if params[:city].present?
      scope = scope.where("address ILIKE ?", "%#{params[:city]}%")
    end

    if params[:query].present?
      query = "%#{params[:query]}%"
      scope = scope.where("title ILIKE ? OR category ILIKE ?", query, query)
    end

    if params[:dates].present?
      dates = params[:dates].split(" to ")

      start_date = Date.parse(dates.first)
      end_date = Date.parse(dates.last)
      scope = scope.where("(start_date >= ? AND end_date <= ?) OR (start_date < ? AND end_date > ?) OR (start_date < ? AND end_date > ?) OR (start_date < ? AND end_date >= ?)", start_date, end_date, start_date, start_date, end_date, end_date, start_date, end_date)
    end

    if user_signed_in?
      @public_events = scope.joins(user: :profile).where(is_private: false, profiles: {is_business: true})
      @public_friends_events = scope.joins(user: [:profile, :friendships]).where(is_private: false, profiles: { is_business: false }, friendships: { friend: current_user } )
      event_ids = current_user.bookings.pluck(:event_id)
      @booked_events = scope.where(id: event_ids)
      @friendships = current_user.friendships
      @friends_bookings = []
      @friendships.each do |friendship|
        friendship.friend.bookings.each do |booking|
          if booking.status == "looking_for_a_buddy"
            @friends_bookings << booking
          end
        end
      end
    else
      @public_events = scope.where(is_private: false)
      @booked_events = []
    end

    @cities = Event.pluck(:address).map { |address| extract_city_from_address(address) }.compact.uniq.sort
  end

  def show
    @booking = Booking.find_by(user: current_user, event: @event)
    authorize @event
    @markers = [{
      lat: @event.latitude,
      lng: @event.longitude
    }]

    @profiles = @event.bookings.includes(user: :profile).where(status: 'going').map { |booking| booking.user.profile }
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
    params.require(:event).permit(:title, :address, :start_date, :end_date, :description, :category, :photo, :is_private)
  end

  def set_event
    @event = Event.find(params[:id])
  end

  def extract_city_from_address(address)
    city = address.split(",").last.strip.split(" ").map(&:capitalize).join(" ")
    city.gsub!(/\b\d{5}\b/, '') # Remove the postcode
    city.strip
  end

end
