require "administrate/base_dashboard"

class KlassDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    description: Field::Text,
    name: Field::String,
    status: Field::EnumField.with_options(searchable: false),
    teacher: Field::BelongsTo,
    student_age_minimum: Field::Number,
    student_age_maximum: Field::Number,
    student_count_minimum: Field::Number,
    student_count_maximum: Field::Number,
    materials_fee: Field::Number.with_options(
      prefix: "$",
      decimals: 2,
    ),
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :status,
    :teacher,
    :student_age_minimum,
    :student_age_maximum,
    :materials_fee,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :status,
    :teacher,
    :description,
    :student_age_minimum,
    :student_age_maximum,
    :student_count_minimum,
    :student_count_maximum,
    :materials_fee,
  ].freeze


  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :status,
    :teacher,
    :description,
    :student_age_minimum,
    :student_age_maximum,
    :student_count_minimum,
    :student_count_maximum,
    :materials_fee,
  ].freeze

  # Overwrite this method to customize how klasses are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(klass)
    klass.name
  end
end
