class CreateEmergencies < ActiveRecord::Migration
  def change
    create_table :emergencies do |t|
      t.string :user_id
      t.string :location_lat
      t.string :location_lon
      t.string :location_url
      t.boolean :status

      t.timestamps null: false
    end
  end
end
