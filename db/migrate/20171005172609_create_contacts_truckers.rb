class CreateContactsTruckers < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts_truckers do |t|
      t.references :contact, foreign_key: true
      t.references :trucker, foreign_key: true
    end
  end
end
