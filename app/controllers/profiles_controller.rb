class ProfilesController < ApplicationController
  def show
    # If click on my profile.avatar go to current_user.profile or user_signed_in
    # Else user_id.profile
    @user = Profile.find(params[:id]).user

    @events = Event.where(user: @user)
    @bookings = Booking.where(user: @user).map { |booking| booking.event }
    @all = (@events + @bookings).sort_by { |e| e[:start_date] }
  end
end
