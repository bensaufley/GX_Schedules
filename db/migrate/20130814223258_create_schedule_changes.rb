class CreateScheduleChanges < ActiveRecord::Migration
  def change
    create_table :schedule_changes do |t|
      t.integer :gx_class_set_id
      t.date :effective_date
      t.integer :studio_id
      t.integer :instructor_id
      t.time :start_time
      t.time :end_time
      t.boolean :canceled

      t.timestamps
    end
    add_index :schedule_changes, [ :gx_class_set_id, :effective_date ], unique: true
  end
end
