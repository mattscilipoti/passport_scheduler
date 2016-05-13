require "administrate/base_dashboard"

# TeacherDashboard was required by render_field
#  Teacher is a User, so inherited from UserDashboard
#  No need for COLLECTION_ATTRIBUTES
#  SHOW_ATTRIBUTES is not used, since the links are to admin/users/:id
class TeacherDashboard < UserDashboard
end
