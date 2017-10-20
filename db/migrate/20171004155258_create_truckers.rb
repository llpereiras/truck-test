class CreateTruckers < ActiveRecord::Migration[5.1]
  def change
    create_table :truckers do |t|
      t.string :name
      t.string :phone
      t.integer :type
      t.integer :body_type
      t.references :origin, :null => true
    end
  end
end
