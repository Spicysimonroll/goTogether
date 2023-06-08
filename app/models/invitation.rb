class Invitation < ApplicationRecord
  belongs_to :event
  belongs_to :friendship

  # Define some constants for our status values
  STATUS_PENDING = "pending".freeze
  STATUS_ACCEPTED = "accepted".freeze
  STATUS_REJECTED = "rejected".freeze

  # Set the default status
  before_create :set_default_status

  # A scope to get only pending invitations
  scope :pending, -> { where(status: STATUS_PENDING) }

  def accept
    update(status: STATUS_ACCEPTED)
  end

  def reject
    update(status: STATUS_REJECTED)
  end

  private

  def set_default_status
    self.status ||= STATUS_PENDING
  end
end
