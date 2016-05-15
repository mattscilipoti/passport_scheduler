# Using Klass (since Class is reserved)
class Klass < ActiveRecord::Base
  belongs_to :teacher, class_name: 'User'
  enum status: [:proposed, :accepted]
  after_initialize :set_default_status, :if => :new_record?
  validates :student_age_minimum, numericality: { only_integer: true, greater_than: 0, less_than: 149 }
  validates :student_age_maximum, numericality: { only_integer: true, greater_than: 1, less_than: 150 }

  # db defaults to 0,
  #  but Klass.new.status == nil (without this)
  def set_default_status
    self.status ||= :proposed
  end

end
