class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :stock_avail
      t.integer :unit_price
      t.integer :stock_sold
      t.integer :sell_price

      t.timestamps
    end
  end
end
