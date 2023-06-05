class Event < ApplicationRecord
  belongs_to :user

  has_many :bookings
  has_many :users, through: :bookings

  has_many :invitations
  has_many :friendships, through: :invitations

  has_many :bookmarks
  has_many :users, through: :bookmarks

  has_many :comments
  has_many :users, through: :comments
end
