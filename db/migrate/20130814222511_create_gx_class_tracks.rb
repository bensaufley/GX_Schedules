class CreateGxClassTracks < ActiveRecord::Migration
  def change
    create_table :gx_class_tracks do |t|
      t.integer :gx_class_id
      t.integer :track_id

      t.timestamps
    end
    add_index :gx_class_tracks, :gx_class_id
    add_index :gx_class_tracks, :track_id
  end
end
