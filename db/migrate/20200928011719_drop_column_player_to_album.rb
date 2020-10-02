class DropColumnPlayerToAlbum < ActiveRecord::Migration[5.2]
  def change
    remove_column :albums, :player, :references
  end
end
