class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :slot, foreign_key: true
      t.references :user, foreign_key: true
      t.string :client

      t.timestamps
    end
  end
end
