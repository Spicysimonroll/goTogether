class InvitationPolicy < ApplicationPolicy
  def accept?
   @record.friendship.friend == @user
  end

  def reject?
    @record.friendship.friend == @user
  end

  class Scope < Scope
    def resolve
      scope.where(friendship: Friendship.where(friend: user))
    end
  end
end
