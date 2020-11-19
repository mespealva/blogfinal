class CreateSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :slots do |t|
      t.boolean :available
      t.references :user, foreign_key: true
      t.string :day
      t.string :start
      t.string :end

      t.timestamps
    end
  end
end
