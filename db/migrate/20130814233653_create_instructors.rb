class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.text :bio
      t.boolean :trains
      t.string :csi_id

      t.timestamps
    end
    add_index :instructors, :csi_id
  end
end
