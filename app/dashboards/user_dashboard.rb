require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    invited_by: Field::Polymorphic,
    id: Field::Number,
    email: Field::String,
    encrypted_password: Field::String,
    reset_password_token: Field::String,
    reset_password_sent_at: Field::DateTime,
    remember_created_at: Field::DateTime,
    sign_in_count: Field::Number,
    current_sign_in_at: Field::DateTime,
    last_sign_in_at: Field::DateTime,
    current_sign_in_ip: Field::String.with_options(searchable: false),
    last_sign_in_ip: Field::String.with_options(searchable: false),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    name: Field::String,
    confirmation_token: Field::String,
    confirmed_at: Field::DateTime,
    confirmation_sent_at: Field::DateTime,
    unconfirmed_email: Field::String,
    role: Field::String.with_options(searchable: false),
    invitation_token: Field::String,
    invitation_created_at: Field::DateTime,
    invitation_sent_at: Field::DateTime,
    invitation_accepted_at: Field::DateTime,
    invitation_limit: Field::Number,
    invitations_count: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :invited_by,
    :id,
    :email,
    :encrypted_password,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    # pull important fields to top
    :id,
    :name,
    :email,
    :role,
    # sort remaining alphabetically
    :confirmation_sent_at,
    :confirmation_token,
    :confirmed_at,
    :created_at,
    :current_sign_in_at,
    :current_sign_in_ip,
    :encrypted_password,
    :invitation_accepted_at,
    :invitation_created_at,
    :invitation_limit,
    :invitation_sent_at,
    :invitation_token,
    :invitations_count,
    :invited_by,
    :last_sign_in_at,
    :last_sign_in_ip,
    :remember_created_at,
    :reset_password_sent_at,
    :reset_password_token,
    :sign_in_count,
    :unconfirmed_email,
    :updated_at,
  ].freeze

  # READ_ONLY ATTRIBUTES
  read_only_attributes = [
    :confirmation_sent_at,
    :confirmation_token,
    :confirmed_at,
    :created_at,
    :current_sign_in_at,
    :current_sign_in_ip,
    :encrypted_password,
    :id,
    :invitation_accepted_at,
    :invitation_created_at,
    :invitation_sent_at,
    :invitation_token,
    :invitations_count,
    :invited_by,
    :last_sign_in_at,
    :last_sign_in_ip,
    :remember_created_at,
    :reset_password_sent_at,
    :reset_password_token,
    :sign_in_count,
    :unconfirmed_email,
    :updated_at,
  ].freeze


  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = (SHOW_PAGE_ATTRIBUTES - read_only_attributes).freeze


  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(user)
    user.moniker
  end
end
