RailsAdmin.config do |config|
  config.main_app_name = ["Bollywood", "BackOffice"]
  ### Popular gems integration
  # config.attr_accessible_role { _current_user.role.to_sym }
  # config.label_methods << :description # Default is [:name, :title]
  # config.browser_validations = false # Default is true


# attempt to include authorization yet helper methods are not available here
  # config.authorize_with do |controller|
  #   redirect_to main_app.root_path unless admin
  # end


  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

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
