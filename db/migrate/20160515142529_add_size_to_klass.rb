class AddSizeToKlass < ActiveRecord::Migration
  def change
    add_column :klasses, :student_count_minimum, :integer
    add_column :klasses, :student_count_maximum, :integer
  end
end
