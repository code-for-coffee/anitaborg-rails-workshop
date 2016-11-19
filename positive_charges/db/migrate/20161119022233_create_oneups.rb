class CreateOneups < ActiveRecord::Migration[5.0]
  def change
    create_table :oneups do |t|
      t.text :title
      t.string :content

      t.timestamps
    end
  end
end
