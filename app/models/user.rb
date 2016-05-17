class User < ActiveRecord::Base
  after_initialize :set_default_role, :if => :new_record?

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable, :confirmable,
  :recoverable, :rememberable, :trackable, :validatable

  enum role: [:user, :vip, :admin]
  has_many :klasses, foreign_key: 'teacher_id'

  scope :teachers, -> { joins(:klasses).where('teacher_id is not null') }

  # returns the appropriate identifier to help a human identify this user
  def moniker
    name || email
  end

  def set_default_role
    self.role ||= :user
  end
  private :set_default_role

end
