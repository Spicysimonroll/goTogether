class ProfilesController < ApplicationController
  def show
    @events = Event.where(user: current_user)
    @bookings = Booking.where(user: current_user).map { |booking| booking.event }
    @all = (@events + @bookings).sort_by { |e| e[:start_date] }
  end
end
