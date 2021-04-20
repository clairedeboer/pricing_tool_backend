class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.references :item_id
      t.string :file

      t.timestamps
    end
  end
end
