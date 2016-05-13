class CreateKlass < ActiveRecord::Migration
  def change
    create_table :klasses do |t|
      t.string :name
      t.text :description
      t.integer :status, null: false, default: 0 # :proposed
    end
  end
end
