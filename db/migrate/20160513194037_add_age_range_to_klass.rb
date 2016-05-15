class AddAgeRangeToKlass < ActiveRecord::Migration
  def change
    add_column :klasses, :student_age_minimum, :integer
    add_column :klasses, :student_age_maximum, :integer
  end
end
