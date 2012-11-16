class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.boolean  :available
      t.string :description
      t.integer :rating
      t.timestamps
    end
  end
end
