class RemovePhotoFromBags < ActiveRecord::Migration[6.1]
  def change
    remove_column :bags, :photo, :string
  end
end
