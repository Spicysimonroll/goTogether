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
    redirect_to user_profile_path, status: :see_other
  endus
  

  def update
    @booking = Booking.find(params[:id])
    @booking.status = params[:status]
    authorize @booking
    @booking.save
    redirect_to event_path(@booking.event)
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    if current_user.invitations.find_by(event: @booking.event)
      current_user.invitations.find_by(event: @booking.event).destroy
    end
    @booking.destroy
    redirect_to user_profile_path, status: :see_other
  end
end
