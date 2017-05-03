class RemoveAddPicturesToPhotos < ActiveRecord::Migration[5.0]
  def change
    remove_column :photos, :pictures, :json
  end
end
