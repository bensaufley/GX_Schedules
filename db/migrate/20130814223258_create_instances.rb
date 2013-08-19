class CreateInstances < ActiveRecord::Migration
  def change
    create_table :instances do |t|
      t.integer :gx_class_set_id
      t.date :effective_date
      t.integer :studio_id, default: nil
      t.integer :instructor_id, default: nil
      t.time :start_time, default: nil
      t.time :end_time, default: nil
      t.boolean :canceled, default: false

      t.timestamps
    end
    add_index :instances, [ :gx_class_set_id, :effective_date ], unique: true
  end
end
