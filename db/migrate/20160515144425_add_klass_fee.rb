class AddKlassFee < ActiveRecord::Migration
  def change
    add_monetize :klasses, :materials_fee, amount: { null: true, default: nil }
  end
end
