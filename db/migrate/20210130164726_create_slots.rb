class CreateSlots < ActiveRecord::Migration[6.0]
  def change
    create_table :slots do |t|
      t.time :start_time
      t.time :end_time
      t.boolean :availability
      t.string :weekday
      t.references :vet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
