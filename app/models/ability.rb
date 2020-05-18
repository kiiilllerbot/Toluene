class Ability
  include CanCan::Ability

  def initialize(user)  
    user ||= User.new
    if user.role == 'Manager'
        can :manage, :all
    else

        # Project Management
        can :read, Project

        # Task Management
        can :read, Task

        # Note Management
        can :update, Note, user_id: user.id
        can :destroy, Note, user_id: user.id
        can :create, Note
        can :read, Note, user_id: user.id

        # Todo Management
        can :update, Todo, user_id: user.id
        can :destroy, Todo, user_id: user.id
        can :create, Todo
        can :read, Todo, user_id: user.id

        # Work Management
        can :destroy, Work, user_id: user.id
        can :create, Work
        can :read, Work

        # Bug Management
        can :destroy, Bug, user_id: user.id
        can :create, Bug
        can :read, Bug

        # Issue Management
        can :update, Issue, user_id: user.id
        can :destroy, Issue, user_id: user.id
        can :create, Issue
        can :read, Issue

    end
  end
end