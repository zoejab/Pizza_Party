class CreatePizzaPlaces < ActiveRecord::Migration
  def change
    create_table :pizza_places do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :phone
      t.integer :rating
      t.string :website

      t.timestamps null: false
    end
  end
end
