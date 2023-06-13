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
    redirect_to event_path(@booking.event)
  end

  def update
    @booking = Booking.find(params[:id])
    raise
    @booking.status = params[:status]
    authorize @booking
    @booking.save
    redirect_to event_path(@booking.event)
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to event_path(@booking.event), status: :see_other
  end
end
