class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @booking.user = current_user
    @booking.event = Event.find(params[:event_id])
    @booking.status = params[:status]
    authorize @booking
    @booking.save
    redirect_based_on_origin
    flash[:notice] = "Your event was booked successfully!"
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = params[:status]
    authorize @booking
    @booking.save
    redirect_to event_path(@booking.event)
    flash[:notice] = "Your event booking was updated successfully!"
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    if current_user.invitations.find_by(event: @booking.event)
      current_user.invitations.find_by(event: @booking.event).destroy
    end
    @booking.destroy
    redirect_to user_profile_path, status: :see_other
    flash[:notice] = "Your event booking was deleted successfully!"
  end

  private

  def redirect_based_on_origin
    referring_url = request.referrer

    if referring_url.include?('invitations')
      redirect_to invitations_path
    else
      redirect_to event_path(@booking.event)
    end
  end
end
