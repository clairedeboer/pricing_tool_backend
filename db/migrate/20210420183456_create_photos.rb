class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.integer :bag_id
      t.string :featured_image

      t.timestamps
    end
  end
end
