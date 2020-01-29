class CreatePlanes < ActiveRecord::Migration[5.2]
  def change
    create_table :planes do |t|
      t.string :name
      t.string :A1, default: "empty"
      t.string :A2, default: "empty"
      t.string :A3, default: "empty"
      t.string :A4, default: "empty"
      t.string :A5, default: "empty"
      t.string :B1, default: "empty"
      t.string :B2, default: "empty"
      t.string :B3, default: "empty"
      t.string :B4, default: "empty"
      t.string :B5, default: "empty"
      t.string :C1, default: "empty"
      t.string :C2, default: "empty"
      t.string :C3, default: "empty"
      t.string :C4, default: "empty"
      t.string :C5, default: "empty"

      t.timestamps
    end
  end
end
