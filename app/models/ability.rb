class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :manage, User, id: user.id
    alias_action :create, :read, :update, :destroy, to: :crud
    can :crud, Product
    can :create, Comment
    if user.admin?
      can :destroy, Comment
    else
      cannot :destroy, Comment
    end
  end
end
