require "administrate/field/base"

# Simply "Enum" errored w/ "uninitialized constant Administrate::Field::Enum"
# refer to: https://github.com/thoughtbot/administrate/issues/150
class EnumField < Administrate::Field::Base
  def to_s
    data.humanize
  end
end
