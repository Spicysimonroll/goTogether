class Event < ApplicationRecord
  belongs_to :user

  has_many :bookings
  has_many :users, through: :bookings
  has_many :invitations
  has_many :bookmarks
  has_many :comments, dependent: :destroy

  include PgSearch::Model
 # pg_search_scope :search_by_title_and_category, against: [:title, :category]

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def start_time
    self.start_date
  end
end
