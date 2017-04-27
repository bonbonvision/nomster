class AddPicturesToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :pictures, :json
  end
end
