class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :age
      t.string :specie
      t.string :diary
      t.text :description
      t.string :address
      t.string :city
      t.integer :price_per_day
      t.integer :size

      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
