class CreateClassProposals < ActiveRecord::Migration
  def change
    create_table :class_proposals do |t|
      t.string :class_name
      t.text :description

      t.timestamps null: false
    end
  end
end
