class Ability
  include CanCan::Ability

  def initialize(user)
    if user.role == "admin" then
      can :manage, :all
    else
      can [:read, :update, :create], Book
      can :manage, User
    end
  end
end
