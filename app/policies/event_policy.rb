class EventPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    #  def resolve
    #    scope.all
    #  end
  end

  def create?
    true
  end

  def show?
    if record.is_private
      user.received_invitations.find_by(event: record) || record.user == user || user.bookings.find_by(event: record)
    else
      true
    end
  end
end
