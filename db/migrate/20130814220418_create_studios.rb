class CreateStudios < ActiveRecord::Migration
  def change
    create_table :studios do |t|
      t.string :name
      t.text :description
      t.integer :club_id

      t.timestamps
    end
    add_index :studios, :club_id
  end
end
