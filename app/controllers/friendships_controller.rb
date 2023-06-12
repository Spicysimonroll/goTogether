class FriendshipsController < ApplicationController
  def index
    @friendships = policy_scope(Friendship)
  end
end
