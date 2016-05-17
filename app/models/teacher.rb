# read-only class, representing Teachers
#   will only provided necessary interface
class Teacher
  def self.all
    User.teachers
  end
end
