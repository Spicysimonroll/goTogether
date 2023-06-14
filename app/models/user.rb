class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile, dependent: :destroy
  accepts_nested_attributes_for :profile

  has_many :events

  has_many :friendships

  has_many :bookings

  has_many :groups

  has_many :bookmarks

  has_many :comments, dependent: :destroy
  has_many :events, through: :comments
  has_many :invitations, through: :events

  def received_invitations
    # all frienships where user is a friend
    friendships = Friendship.where(friend: self)
    # all invitations for those frienships
    Invitation.where(friendship: friendships)
  end
end
