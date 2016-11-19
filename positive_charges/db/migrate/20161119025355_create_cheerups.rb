class CreateCheerups < ActiveRecord::Migration[5.0]
  def change
    create_table :cheerups do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
