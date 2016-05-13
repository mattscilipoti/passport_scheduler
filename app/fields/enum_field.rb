require "administrate/field/base"

# Supports ActiveRecord enum types.
#  Displays a button to set each enum for resource
# WORKAROUND: Name of "Enum" errored w/ "uninitialized constant Administrate::Field::Enum"
# refer to: https://github.com/thoughtbot/administrate/issues/150
class EnumField < Administrate::Field::Base
  attr_accessor :enum_iteratee

  def to_s
    data.humanize
  end

  def caption
    caption = enum_iteratee.humanize
    # TODO: use past/present tense
    if is_assigned_enum?
      caption
    else
      "#{caption}?"
    end
  end

  def css_classes
    classes = [attribute.to_s, 'button']
    if is_assigned_enum?
      classes << "current"
    else
      classes << "hollow"
    end
  end

  def is_assigned_enum?
    enum_iteratee == data
  end
  private :is_assigned_enum?

end
