class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event
  enum status: [:going, :looking_for_a_buddy, :not_going]
  after_initialize :init

  def init
    self.status = :not_going
  end
end
