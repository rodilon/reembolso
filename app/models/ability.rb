class Ability
  include CanCan::Ability

  def initialize(user)
    
    if user
      if user.kind == 'general'
        can :access, :rails_admin
        can :dashboard
        can :manage, Expense, user_id: user.id
        #can :new, Expense, user_id: user.id
        
        #cannot :edit, Expense, :status

        can :manage, User, id: user.id
        cannot :new, User

      elsif user.kind == 'administrative'
          can :access, :rails_admin
          can :dashboard
          can :manage, Expense
          can :manage, User, id: user.id
          cannot :new, User

      elsif user.kind == 'manager'
        can :access, :rails_admin
        can :dashboard
        can :manage, Expense
        can :manage, User, id: user.id
        cannot :new, User

      elsif user.kind == 'admin'
        can :manage, :all
      end
    end




        #general = {colocar suas proprias expenses, alterar e excluir}
        #admin = {manager all}
        #administrative = {pode colocar expenses e pode listar os usuários para mudar o status da despesa}
        #manager = {pode listar os usuários que estão relacionados ao seu perfil}

    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
