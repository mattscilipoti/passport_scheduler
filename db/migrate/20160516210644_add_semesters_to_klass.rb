class AddSemestersToKlass < ActiveRecord::Migration
  def change
    add_column :klasses, :year, :integer
    add_column :klasses, :fall, :boolean
    add_column :klasses, :spring, :boolean
  end
end
