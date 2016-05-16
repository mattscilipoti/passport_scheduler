# Using Klass (since Class is reserved)
class Klass < ActiveRecord::Base
  after_initialize :set_default_status, :if => :new_record?
  belongs_to :teacher, class_name: 'User'
  enum status: [:proposed, :accepted]
  monetize :materials_fee_cents, :allow_nil => true,
    :numericality => {
      :greater_than_or_equal_to => 0,
      :less_than_or_equal_to => 1000
    }
  validates :student_age_minimum, numericality: { only_integer: true, greater_than: 0, less_than: 149 }
  validates :student_age_maximum, numericality: { only_integer: true, greater_than: 1, less_than: 150 }
  validates :student_count_minimum, numericality: { only_integer: true, greater_than: 0 }
  validates :student_count_maximum, numericality: { only_integer: true, greater_than: 1 }

  # db defaults to 0,
  #  but Klass.new.status == nil (without this)
  def set_default_status
    self.status ||= :proposed
  end

end
