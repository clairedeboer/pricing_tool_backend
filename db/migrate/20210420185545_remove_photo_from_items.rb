class RemovePhotoFromItems < ActiveRecord::Migration[6.1]
  def change
    remove_column :items, :photo, :string
  end
end
