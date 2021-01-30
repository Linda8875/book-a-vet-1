class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :health_info
      t.date :birthday
      t.references :client, null: false, foreign_key: true
      t.timestamps
    end
  end
end
