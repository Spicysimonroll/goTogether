# frozen_string_literal: true

class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    false
  end

  def show?
    false
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  class Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.where(user: user)  # This ensures that a user can only see their own invitations
      # I had to add the line above and put in comment the line below.
     # raise NotImplementedError, "You must define #resolve in #{self.class}"
    end

 

    private

    attr_reader :user, :scope
  end
end
