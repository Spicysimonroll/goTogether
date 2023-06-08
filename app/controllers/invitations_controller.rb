class InvitationsController < ApplicationController
  before_action :set_invitation, only: [:accept, :reject]
  after_action :verify_policy_scoped, only: :index


  def index
    @invitations = policy_scope(Invitation)
    @invitations = []
    current_user.friendships.each do |friendship|
      friendship.invitations.each do |invitation|
        @invitations << invitation
      end
      #.pending.order(created_at: :desc)
    end
  end

  def accept
    authorize @invitation, :accept?  # Pundit authorization with specific action
    @invitation.accept
    redirect_to invitations_path, notice: 'Invitation was successfully accepted.'
  end



  def reject
    authorize @invitation, :reject?
    @invitation.reject
    redirect_to invitations_path, notice: 'Invitation was successfully rejected.'

  end

  private

  def set_invitation
    @invitation = Invitation.find(params[:id])
  end
end
