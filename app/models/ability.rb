class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new  # guest user (not logged in)

    #can :read, Auction
    can :read, Auction do |auction| auction.active? && auction.ends_at > Time.now end

    if user.admin?
      can :manage, :all
    else
      can :read, Auction do |auction| auction.user == user && auction.active? && auction.ends_at <= Time.now end
      can :read, Auction do |auction| auction.user_ganador == user.id && !auction.active?  || auction.user == user end
      can [:create, :myAuctions, :finalizar, :finalizadas, :ganadas], Auction
      can [:update], Auction do |auction| auction.user == user && auction.bids.empty? end    
      can [:destroy], Auction do |auction| auction.user == user end

      can [:create], Bid
    end

    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
