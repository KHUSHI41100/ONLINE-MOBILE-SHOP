class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.decimal :price
      t.text :description
      t.text :specifications
      t.references :usser

      t.timestamps
    end
  end
end
