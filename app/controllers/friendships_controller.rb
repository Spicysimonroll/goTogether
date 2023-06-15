class FriendshipsController < ApplicationController
  def index
    @friendships = policy_scope(Friendship)

    if params[:query].present?
      query = "%#{params[:query]}%"

      @friendships = @friendships.joins('INNER JOIN profiles AS friend_profiles ON friendships.friend_id = friend_profiles.user_id')
                                  .where("friend_profiles.first_name ILIKE :query OR friend_profiles.last_name ILIKE :query OR friend_profiles.username ILIKE :query", query: query)
    end
  end

  private

  def event_params
    params.require(:profiles).permit(:first_name, :last_name, :username)
  end

end
