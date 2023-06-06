class Event < ApplicationRecord
  belongs_to :user

  has_many :bookings
  has_many :users, through: :bookings
  has_many :invitations
  has_many :bookmarks
  has_many :comments
end
