class CreateLegs < ActiveRecord::Migration[5.0]
  def change
    create_table :legs do |t|
      t.references :trip, foreign_key: true
      t.date :date
      t.string :location
      t.float :lat
      t.float :lng
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
