class CreateGxClassSets < ActiveRecord::Migration
  def change
    create_table :gx_class_sets do |t|
      t.integer :gx_class_id
      t.integer :studio_id
      t.integer :instructor_id
      t.integer :level
      t.date :start_date
      t.time :start_time
      t.time :end_time
      t.boolean :reservable
      t.text :paid_class_csi_id
      t.integer :reserve_max

      t.timestamps
    end
    add_index :gx_class_sets, :gx_class_id
    add_index :gx_class_sets, :studio_id
    add_index :gx_class_sets, :instructor_id
  end
end
