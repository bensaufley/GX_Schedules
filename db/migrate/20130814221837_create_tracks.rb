class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :short
      t.string :long

      t.timestamps
    end
  end
end
