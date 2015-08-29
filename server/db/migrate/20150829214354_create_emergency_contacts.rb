class CreateEmergencyContacts < ActiveRecord::Migration
  def change
    create_table :emergency_contacts do |t|
      t.integer :user_id
      t.string :name
      t.string :contact_no
      t.string :email

      t.timestamps null: false
    end
  end
end
