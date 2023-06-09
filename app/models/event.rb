class Event < ApplicationRecord
  belongs_to :user

  has_many :bookings
  has_many :users, through: :bookings
  has_many :invitations
  has_many :bookmarks
  has_many :comments, dependent: :destroy
  
  include PgSearch::Model
  pg_search_scope :search_by_title_and_category, against: [:title, :category]
end
