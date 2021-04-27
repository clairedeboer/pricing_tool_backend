class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.integer :bag_id
      t.string :file

      t.timestamps
    end
  end
end
