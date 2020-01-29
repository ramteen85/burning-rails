class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.string :flight_number
      t.string :origin
      t.string :destination
      t.date :date
      t.integer :plane_id

      t.timestamps
    end
  end
end
