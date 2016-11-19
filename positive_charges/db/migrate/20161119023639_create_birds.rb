class CreateBirds < ActiveRecord::Migration[5.0]
  def change
    create_table :birds do |t|
      t.string :name
      t.string :species
      t.text :origin

      t.timestamps
    end
  end
end
