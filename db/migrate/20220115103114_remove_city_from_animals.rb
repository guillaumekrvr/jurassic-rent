class RemoveCityFromAnimals < ActiveRecord::Migration[6.1]
  def change
    remove_column :animals, :city
  end
end
