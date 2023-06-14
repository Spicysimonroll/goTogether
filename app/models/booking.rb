class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event
  enum status: [:going, :looking_for_a_buddy, :not_going]
end
