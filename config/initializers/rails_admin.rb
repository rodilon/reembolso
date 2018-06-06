RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true
  config.excluded_models = ['ActiveStorage::Blob', 'ActiveStorage::Attachment']


  config.model Expense do
    create do 
      field :description
      
      field :date
      field :value
      
      
      field :status do
        default_value "pending"
      end
      
        

      field :user_id, :hidden do
        default_value do
          bindings[:view].current_user.id
        end
      end
    end

    edit do
      field :description
      #field :status
      field :date
      field :value
      

      field :user_id, :hidden do
        default_value do
          bindings[:view].current_user.id
        end
      end

      field :status do
        visible do
          bindings[:view]._current_user.kind.include?(:admin)
        end
      end

    end
  end

  













  
  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
