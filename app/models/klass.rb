# Using Klass (since Class is reserved)
class Klass < ActiveRecord::Base
  enum status: [:proposal, :accepted, :scheduled, :completed]
  after_initialize :set_default_status, :if => :new_record?

  # db defaults to 0,
  #  but Klass.new.status == nil (without this)
  def set_default_status
    self.status ||= :proposal
  end

end
