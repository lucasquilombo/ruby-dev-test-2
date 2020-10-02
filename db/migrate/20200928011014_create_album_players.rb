class CreateAlbumPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :album_players do |t|
      t.references :album, index: true, foreign_key: true
      t.references :player, index: true, foreign_key: true

      t.timestamps
    end
  end
end
