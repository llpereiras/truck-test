class CreateTruckers < ActiveRecord::Migration[5.1]
  def change
    create_table :truckers do |t|
      t.string :name
      t.string :phone
      t.references :vehicle, foreign_key: true
    end
  end
end
