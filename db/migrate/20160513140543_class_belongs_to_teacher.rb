class ClassBelongsToTeacher < ActiveRecord::Migration
  def change
    add_column :klasses, :teacher_id, :integer, index: true
  end
end
