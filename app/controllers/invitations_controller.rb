class InvitationsController < ApplicationController
  before_action :set_invitation, only: %i[accept reject]
  before_action :set_event, only: %i[new create]
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

  def new
    @invitation = Invitation.new
    authorize @invitation
  end

  def create
    group = Group.find(params[:invitation][:friendship_id])
    group.friendships.each do |friend|
      @invitation = Invitation.new
      @invitation.friendship = friend
      @invitation.event = @event
      @invitation.status = "Pending"
      authorize @invitation
      @invitation.save
    end
    redirect_to event_path(@event)
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

  def destroy
    @invitation = Invitation.find(params[:id])
    authorize @invitation
    @invitation.destroy
    redirect_to invitations_path, status: :see_other
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def set_invitation
    @invitation = Invitation.find(params[:id])
  end

  def invitation_params
    params.require(:invitation).permit(:friendship_id)
  end
end
