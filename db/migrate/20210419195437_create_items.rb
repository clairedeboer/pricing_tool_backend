class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.references :user_id
      t.string :designer
      t.string :style
      t.string :size
      t.string :material
      t.string :color
      t.string :condition
      t.integer :retail_price
      t.integer :resale_value

      t.timestamps
    end
  end
end
